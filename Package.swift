// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ModularSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ModularSDK",
            targets: ["ModularCoreModule", "FeatureModule"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ModularCoreModule",
            path: "ModularCoreModule.xcframework"
        ),
        .binaryTarget(
            name: "FeatureModule",
            path: "FeatureModule.xcframework"
        )
    ]
)
