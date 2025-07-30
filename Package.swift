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
        ),
    ],
    dependencies: [
        // PromiseKit
        .package(url: "https://github.com/mxcl/PromiseKit.git", .exact("8.2.0")),
        // Prebid Mobile
        .package(url: "https://github.com/prebid/prebid-mobile-ios.git", .exact("3.1.0")),
        // Google Mobile Ads (12.x)
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .upToNextMajor(from: "12.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "YieldLoveAdIntegrationSPM",
            path: "/YieldLoveAdIntegrationSPM.xcframework"
        )
    ]
)
