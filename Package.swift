// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "numerical_swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "numerical_swift",
            targets: ["numerical_swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "numerical_swift"),
        .testTarget(
            name: "numerical_swiftTests",
            dependencies: ["numerical_swift"]
        ),
    ]
)
