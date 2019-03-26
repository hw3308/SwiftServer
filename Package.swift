// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftServer",
    products: [
        .executable(name: "SwiftServer", targets: ["SwiftServer"])
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        ],
    targets: [
        .target(name: "SwiftServer", dependencies: ["PerfectHTTPServer"])
    ]
)

