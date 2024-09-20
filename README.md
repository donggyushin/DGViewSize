# DGViewSize
Get easily view's size


## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding `DGViewSize` as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

```
dependencies: [
   .package(url: "https://github.com/donggyushin/DGViewSize.git", .upToNextMajor(from: "1.0.0"))
]
```

Normally you'll want to depend on the DGViewSize target:

```
.product(name: "DGViewSize", package: "DGViewSize")
```

## Usage

```swift
struct SampleCode: View {
    var body: some View {
        Text("size")
            .size { size in
                print("\(size)")
            }
    }
}
```