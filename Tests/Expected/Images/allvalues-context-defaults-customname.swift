// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  typealias Image = UIImage
#endif

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum XCTImages: String {
  case Exotic_Banana = "Exotic/Banana"
  case Exotic_Mango = "Exotic/Mango"
  case Private = "private"
  case Round_Apricot = "Round/Apricot"
  case Round_Orange = "Round/Orange"
  case Round_Apple = "Round/Apple"
  case Round_Double_Cherry = "Round/Double/Cherry"
  case Round_Tomato = "Round/Tomato"

  // swiftlint:disable:next explicit_type_interface
  static let allValues = [
    Exotic_Banana,
    Exotic_Mango,
    Private,
    Round_Apricot,
    Round_Orange,
    Round_Apple,
    Round_Double_Cherry,
    Round_Tomato
  ]
}
// swiftlint:enable identifier_name line_length type_body_length

extension XCTImages {
  var image: Image {
    let bundle = NSBundle(forClass: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: rawValue, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX)
    let image = bundle.imageForResource(rawValue)
    #elseif os(watchOS)
    let image = Image(named: rawValue)
    #endif
    guard let result = image else { fatalError("Unable to load image \(rawValue).") }
    return result
  }
}

extension Image {
  convenience init!(asset: XCTImages) {
    #if os(iOS) || os(tvOS)
    let bundle = NSBundle(forClass: BundleToken.self)
    self.init(named: asset.rawValue, inBundle: bundle, compatibleWithTraitCollection: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.rawValue)
    #endif
  }
}

private final class BundleToken {}