// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Components",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Components",
            targets: ["Components"]),
    ],
    dependencies: [
        .package(path: "../Commons")
    ],
    targets: [
        .target(
            name: "Components",
            dependencies: [
            .product(name: "Commons", package: "Commons")
        ]),
        .testTarget(
            name: "ComponentsTests",
            dependencies: ["Components"]),
    ]
)
