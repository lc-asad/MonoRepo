// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageB",
    dependencies: [
        .package(path: "../PackageA"),
    ],
    targets: [
        .target(
            name: "PackageB",
            dependencies: ["PackageA"]),
        .testTarget(
            name: "PackageBTests",
            dependencies: ["PackageB"]),
    ]
)
