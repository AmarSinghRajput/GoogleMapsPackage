// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMapsPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleMapsPackage",
            targets: ["GoogleMapsPackage", "GoogleMaps", "GoogleMapsBase", "GoogleMapsCore"]),
    ],
    dependencies: [
      .package(
        url: "https://github.com/googlemaps/google-maps-ios-utils.git",
        .upToNextMinor(from: "4.2.2")
      )
    ],
    targets: [
            .target(
                name: "GoogleMapsPackage",
                dependencies: []
                ),
            .binaryTarget(
                name: "GoogleMaps",
                path: "Sources/localBinaries/GoogleMaps.xcframework"
            ),
            .binaryTarget(
                name: "GoogleMapsBase",
                path: "Sources/localBinaries/GoogleMapsBase.xcframework"
            ),
            .binaryTarget(
                name: "GoogleMapsCore",
                path: "Sources/localBinaries/GoogleMapsCore.xcframework"
            ),
            .testTarget(
                name: "GoogleMapsPackageTests",
                dependencies: ["GoogleMapsPackage"]
                )
        ]
)
