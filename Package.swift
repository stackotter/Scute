// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "WebsiteBuilder",
    platforms: [.macOS(.v12)],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-parsing", from: "0.8.0"),
        .package(url: "https://github.com/loopwerk/Parsley", from: "0.8.0"),
        .package(url: "https://github.com/scinfu/SwiftSoup", from: "2.3.8"),
        .package(url: "https://github.com/swhitty/FlyingFox", from: "0.6.0"),
    ],
    targets: [
        .executableTarget(
            name: "WebsiteBuilder",
            dependencies: [
                .product(name: "Parsing", package: "swift-parsing"),
                "Parsley",
                "SwiftSoup",
                "FlyingFox",
            ]
		),
        .testTarget(
            name: "WebsiteBuilderTests",
            dependencies: ["WebsiteBuilder"]
		),
    ]
)
