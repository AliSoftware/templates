## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | xcassets/swift3.stencil |
| Invocation example | `swiftgen xcassets -t swift3 …` |
| Language | Swift 3 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 3* code

It also takes into account any namespacing folder in your Assets Catalogs (i.e. if you create a folder in your Assets Catalog, select it, and check the "Provides Namespace" checkbox on the Attributes Inspector panel on the right)

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen` in the command line, using `--param <paramName>=<newValue>`

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `Asset` | Allows you to change the name of the generated `enum` containing all assets. |
| `noAllValues` | N/A | Setting this parameter will disable generation of the `allValues` constant. |

## Generated Code

**Extract:**

```swift
enum Asset {
  enum Exotic {
    static let banana: AssetType = "Exotic/Banana"
    static let mango: AssetType = "Exotic/Mango"
  }
  static let `private`: AssetType = "private"
}
```

[Full generated code](https://github.com/SwiftGen/templates/blob/master/Tests/Expected/XCAssets/swift3-context-defaults.swift)

## Usage example

```swift
// You can create new images with the convenience constructor like this:
let bananaImage = UIImage(asset: Asset.Exotic.banana)
let privateImage = UIImage(asset: Asset.private)

// Or as an alternative, you can refer to enum instance and call .image on it:
let sameBananaImage = Asset.Exotic.banana.image
let samePrivateImage = Asset.private.image
```
