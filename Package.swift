// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// date 30-01-2024
// changes made into PackageB
import PackageDescription

let package = Package(
    name: "Monorepo",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .Monorepo,
        .Commons,
        .Components,
        .Features
    ],
    dependencies: [
//        .package(path: "Commons"),
//        .package(path: "Components"),
//        .package(path: "Features")
    ],
    targets: [
        .Monorepo,
        .Commons,
        .Components,
        .Features
    ]

)

extension Product {
    static let Monorepo = library(name: .Monorepo, targets: [.Monorepo])
    static let Commons = library(name: .Commons, targets: [.Commons])
    static let Components = library(name: .Components, targets: [.Components])
    static let Features = library(name: .Features, targets: [.Features])
}

extension String {
    static let Monorepo = "Monorepo"
    static let Commons = "Commons"
    static let Components = "Components"
    static let Features = "Features"
}

extension Target {
    static let Monorepo = target(name: .Monorepo,
                                 dependencies: [.Components, .Commons, .Features])
    static let Commons = target(name: .Commons,
                                dependencies: [],
                                path: "Commons/Sources")
    
    static let Components = target(name: .Components,
                                   dependencies: [.Commons],
                                   path: "Components/Sources")
    
    static let Features = target(name: .Features,
                                 dependencies: [.Components, .Commons],
                                 path: "Features/Sources")
}

extension Target.Dependency {
    static let Monorepo = byName(name: .Monorepo)
    static let Components = byName(name: .Components)
    static let Features = byName(name: .Features)
    static let Commons = byName(name: .Commons)
}
