import PackageDescription

let package = Package(
    name: "hello",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", "1.5.15"),
        .Package(url: "https://github.com/OpenKitten/MongoKitten.git", "4.0.0-vaportls")
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
    ]
)
