// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Monorepo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "Monorepo", targets: ["Monorepo"]),
        //.library(name: "PackageA", targets: ["PackageA"]),
        //.library(name: "PackageB", targets: ["PackageB"]),
    ],
    dependencies: [
        .package(path: "PackageA"),
        .package(path: "PackageB")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "Monorepo"),
        .target(name: "PackageA", dependencies: [], path: "PackageA/Sources/"),
        .target(name: "PackageB", dependencies: [], path: "PackageB/Sources/"),
        .testTarget(name: "MonorepoTests", dependencies: ["Monorepo"]),
    ]
)
