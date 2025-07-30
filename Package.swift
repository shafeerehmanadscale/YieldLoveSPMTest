// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YieldLoveAdIntegrationSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YieldLoveAdIntegrationSPM",
            targets: ["YieldLoveAdIntegrationSPM"]
        )
    ],
    dependencies: [
        // Your dependencies
        .package(url: "https://github.com/prebid/prebid-mobile-ios.git", from: "3.1.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "12.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "YieldLoveAdIntegrationSPM",
            url: "https://github.com/shafeerehmanadscale/YieldLoveSPMTest/releases/download/1.0.2/YieldLoveAdIntegrationSPM.xcframework.zip",
            checksum: "101a2bcbf7d0e465c6cc0eb4369bda4f69aa1874d81a59840f4c22d8c4fac344"
        )
    ]
)
