//
//  CatalogDataStore.swift
//  FakeNFT
//
//  Created by Anton Filipchuk on 24.06.2024.
//

import Foundation

protocol CatalogDataStoreProtocol {
    var catalog: [Catalog] { get set }
    
    func getCatalog(completion: @escaping (Bool) -> Void)
    func getCollection(with id: String) -> Catalog?
    func getCollectionNft(with nfts: [String], completion: @escaping (Bool) -> Void)
}

final class CatalogDataStore {
    
    static let shared = CatalogDataStore()
    private init() {}
    
    private var task: NetworkTask?
    private let networkClient = DefaultNetworkClient()
    
    var catalog: [Catalog] = []
    var collection: [Nft] = []
    
    func getCatalog(completion: @escaping (Bool) -> Void) {
        UIBlockingProgressHUD.show()
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else { return }
            if self.task != nil { return }
            task?.cancel()
            let request = CatalogRequest()
            self.catalog = []
            self.task = networkClient.send(
                request: request,
                type: [Catalog].self) { [weak self] result in
                    guard let self = self else { return }
                    switch result {
                    case .success(let catalog):
                        self.catalog = catalog
                        completion(true)
                    case .failure(let error):
                        print(error.localizedDescription)
                        completion(false)
                    }
                    self.task = nil
                    UIBlockingProgressHUD.dismiss()
                }
        }
    }
    
    func getCollection(with id: String) -> Catalog? {
        let selectedCatalog = catalog.first(where: { catalog in
            catalog.id == id })
        return selectedCatalog
    }
    
    func getNft(with id: String, completion: @escaping (Bool) -> Void) {
        let selectedCatalog = catalog.first(where: { catalog in
            catalog.id == id })
        guard let nfts = selectedCatalog?.nfts else { return }
        UIBlockingProgressHUD.show()
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else { return }
            task?.cancel()
            nfts.forEach { nft in
                let request = CatalogNftRequest(id: nft)
                self.collection = []
                self.task = self.networkClient.send(
                    request: request,
                    type: Nft.self) { [weak self] result in
                        guard let self = self else { return }
                        switch result {
                        case .success(let nft):
                            self.collection.append(nft)
                        case .failure(let error):
                            print(error.localizedDescription)
                            completion(false)
                        }
                        
                        if self.collection.count == nfts.count {
                            completion(true)
                        }
                        
                        self.task = nil
                        UIBlockingProgressHUD.dismiss()
                    }
            }
        }
    }
    
    
    
    
}
