// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageB",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "PackageB", targets: ["PackageB"]),
//        .library(name: "PackageA", targets: ["PackageA"]),
    ],
    dependencies: [
        .package(path: "../PackageA")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PackageB",
            dependencies: ["PackageA"],
            path: "Sources/PackageB"),
        .testTarget(
            name: "PackageBTests",
            dependencies: ["PackageB"]),
    ]
)
