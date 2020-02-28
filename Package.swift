// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mobile-apps-thrift-swift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "mobile-apps-thrift-swift",
            targets: ["mobile-apps-thrift-swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/guardian/thrift-swift.git", .exact("0.14.1-gu2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "mobile-apps-thrift-swift",
            dependencies: ["Thrift"]),
        .testTarget(
            name: "mobile-apps-thrift-swiftTests",
            dependencies: ["mobile-apps-thrift-swift"]),
    ]
)
