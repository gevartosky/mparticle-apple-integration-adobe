// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "mParticle-Adobe",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "mParticle-Adobe",
            targets: ["mParticle-Adobe"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/mParticle/mparticle-apple-sdk",
            .upToNextMajor(from: "8.0.0")),
    ],
    targets: [
        .target(
            name: "mParticle-Adobe",
            dependencies: [
                "mParticle-Apple-SDK"
            ],
            path: "mParticle-Adobe",
            publicHeadersPath: "./Include",
            cSettings: [
                CSetting.headerSearchPath("./**"),
            ]
        )
    ]
)
