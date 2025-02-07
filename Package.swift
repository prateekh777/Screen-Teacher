// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ScreenReaderAssistant",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "ScreenReaderAssistant",
            targets: ["ScreenReaderAssistant"]
        )
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "ScreenReaderAssistant",
            dependencies: []
        ),
        .testTarget(
            name: "ScreenReaderAssistantTests",
            dependencies: ["ScreenReaderAssistant"]
        )
    ]
) 