// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftKeccak",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "KeccakTiny",targets: ["KeccakTiny"]),
        .library(name: "Sha3Tiny",targets: ["Sha3Tiny"]),
        .library(name: "SwiftKeccak",targets: ["SwiftKeccak"]),
    ],
    dependencies: [
        .package(url: "https://github.com/keefertaylor/Base58Swift.git", from: "2.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "KeccakTiny",dependencies: []),
        .target(name: "Sha3Tiny",dependencies: []),
        .target(name: "SwiftKeccak",dependencies: ["KeccakTiny", "Sha3Tiny"]),
        .testTarget(
            name: "SwiftKeccakTests",
            dependencies: ["SwiftKeccak", "Base58Swift"]),
    ]
)
