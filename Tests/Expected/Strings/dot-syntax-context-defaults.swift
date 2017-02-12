// Generated using SwiftGen, by O.Halligon — https://github.com/AliSoftware/SwiftGen

import Foundation

// swiftlint:disable file_length
// swiftlint:disable line_length

// swiftlint:disable type_body_length
// swiftlint:disable nesting
// swiftlint:disable variable_name
// swiftlint:disable valid_docs
// swiftlint:disable type_name

enum L10n {
  /// Some alert body there
  static let AlertMessage = L10n.tr("alert_message")
  /// Title of the alert
  static let AlertTitle = L10n.tr("alert_title")
  /// Hello, my name is %@ and I'm %d
  static func Greetings(p1: String, p2: Int) -> String {
    return L10n.tr("greetings", p1, p2)
  }
  /// These are %3$@'s %1$d %2$@.
  static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
    return L10n.tr("ObjectOwnership", p1, p2, p3)
  }

  enum Apples {
    /// You have %d apples
    static func Count(p1: Int) -> String {
      return L10n.tr("apples.count", p1)
    }
  }

  enum Bananas {
    /// Those %d bananas belong to %@.
    static func Owner(p1: Int, p2: String) -> String {
      return L10n.tr("bananas.owner", p1, p2)
    }
  }

  enum Settings {

    enum NavigationBar {
      /// Some Reserved Keyword there
      static let `Self` = L10n.tr("settings.navigation-bar.self")

      enum Title {

        enum Even {
          /// Settings
          static let Deeper = L10n.tr("settings.navigation-bar.title.even.deeper")

          enum Deeper {

            enum Than {

              enum We {

                enum Can {
                  /// DeepSettings
                  static let Handle = L10n.tr("settings.navigation-bar.title.even.deeper.than.we.can.handle")
                }
              }
            }
          }
        }
      }
    }

    enum UserProfileSection {
      /// Here you can change some user profile settings.
      static let FooterText = L10n.tr("seTTings.uSer-proFile-sectioN.footer_text")
      /// User Profile Settings
      static let HeaderTitle = L10n.tr("SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
    }
  }
}

extension L10n {
  private static func tr(key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

// swiftlint:enable type_body_length
// swiftlint:enable nesting
// swiftlint:enable variable_name
// swiftlint:enable valid_docs
