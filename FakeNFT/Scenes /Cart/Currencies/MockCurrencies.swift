
import Foundation

final class MockCurrencies {
    
    var currencies: [Currency] {
        return [
            Currency(id: "0", title: "Shiba_Inu", name: "SHIB", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Shiba_Inu_(SHIB).png"),
            Currency(id: "1", title: "Cardano", name: "ADA", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Cardano_(ADA).png"),
            Currency(id: "2", title: "Tether", name: "USDT", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Tether_(USDT).png"),
            Currency(id: "3", title: "ApeCoin", name: "APE", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/ApeCoin_(APE).png"),
            Currency(id: "4", title: "Solana", name: "SOL", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Solana_(SOL).png"),
            Currency(id: "5", title: "Bitcoin", name: "BITCOIN", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Bitcoin_(BTC).png"),
            Currency(id: "6", title: "Dogecoin", name: "DOGECOIN", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Dogecoin_(DOGE).png"),
            Currency(id: "7", title: "Ethereum", name: "ETHEREUM", image: "https://code.s3.yandex.net/Mobile/iOS/Currencies/Ethereum_(ETH).png")
        ]
    }
}