// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TextureSwiftSupport",
    defaultLocalization: "en",
    platforms: [
             .macOS(.v10_15),
             .iOS(.v11),
         ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TextureSwiftSupport",
            type: .dynamic,
            targets: ["TextureSwiftSupport"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nickaroot/Texture.git", .branch("spm")),
        .package(url: "https://github.com/VergeGroup/Verge.git", from: "8.12.2"),
    ],
    targets: [
        .target(
            name: "TextureSwiftSupport",
            dependencies: [
                .product(name: "AsyncDisplayKitIGListKit", package: "Texture"),
                .product(name: "Verge", package: "Verge"),
            ],
            path: ".",
            sources: ["Sources/"]
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx11
)
