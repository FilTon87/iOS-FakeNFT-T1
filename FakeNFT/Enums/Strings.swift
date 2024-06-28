// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Catalog {
    /// Открыть Nft
    internal static let openNft = L10n.tr("Localizable", "Catalog.openNft", fallback: "Открыть Nft")
  }
  internal enum Error {
    /// Произошла ошибка сети
    internal static let network = L10n.tr("Localizable", "Error.network", fallback: "Произошла ошибка сети")
    /// Повторить
    internal static let `repeat` = L10n.tr("Localizable", "Error.repeat", fallback: "Повторить")
    /// Ошибка
    internal static let title = L10n.tr("Localizable", "Error.title", fallback: "Ошибка")
    /// Произошла неизвестная ошибка
    internal static let unknown = L10n.tr("Localizable", "Error.unknown", fallback: "Произошла неизвестная ошибка")
  }
  internal enum Profile {
    /// О разработчике
    internal static let aboutDeveloper = L10n.tr("Localizable", "Profile.aboutDeveloper", fallback: "О разработчике")
    /// По названию
    internal static let byName = L10n.tr("Localizable", "Profile.byName", fallback: "По названию")
    /// По цене
    internal static let byPrice = L10n.tr("Localizable", "Profile.byPrice", fallback: "По цене")
    /// По рейтингу
    internal static let byRating = L10n.tr("Localizable", "Profile.byRating", fallback: "По рейтингу")
    /// Сменить
    /// фото
    internal static let changePhoto = L10n.tr("Localizable", "Profile.changePhoto", fallback: "Сменить\nфото")
    /// Закрыть
    internal static let close = L10n.tr("Localizable", "Profile.close", fallback: "Закрыть")
    /// Описание
    internal static let description = L10n.tr("Localizable", "Profile.description", fallback: "Описание")
    /// Избранные NFT
    internal static let favoritesNft = L10n.tr("Localizable", "Profile.favoritesNft", fallback: "Избранные NFT")
    /// от
    internal static let from = L10n.tr("Localizable", "Profile.from", fallback: "от")
    /// Сайт
    internal static let link = L10n.tr("Localizable", "Profile.link", fallback: "Сайт")
    /// Загрузить изображение
    internal static let loadImage = L10n.tr("Localizable", "Profile.loadImage", fallback: "Загрузить изображение")
    /// Мои NFT
    internal static let myNft = L10n.tr("Localizable", "Profile.myNft", fallback: "Мои NFT")
    /// Имя
    internal static let name = L10n.tr("Localizable", "Profile.name", fallback: "Имя")
    /// У Вас ещё нет избранных NFT
    internal static let noFavoritesNft = L10n.tr("Localizable", "Profile.noFavoritesNft", fallback: "У Вас ещё нет избранных NFT")
    /// Вставьте ссылку на изображение
    internal static let pasteLinkToImage = L10n.tr("Localizable", "Profile.pasteLinkToImage", fallback: "Вставьте ссылку на изображение")
    /// Цена
    internal static let price = L10n.tr("Localizable", "Profile.price", fallback: "Цена")
    /// Сортировка
    internal static let sort = L10n.tr("Localizable", "Profile.sort", fallback: "Сортировка")
  }
  internal enum Tab {
    /// Корзина
    internal static let cart = L10n.tr("Localizable", "Tab.cart", fallback: "Корзина")
    /// Каталог
    internal static let catalog = L10n.tr("Localizable", "Tab.catalog", fallback: "Каталог")
    /// Профиль
    internal static let profile = L10n.tr("Localizable", "Tab.profile", fallback: "Профиль")
    /// Статистика
    internal static let statistics = L10n.tr("Localizable", "Tab.statistics", fallback: "Статистика")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
