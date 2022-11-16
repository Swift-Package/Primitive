// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Primitive",
    platforms: [.iOS(.v15), .macOS(.v13), .watchOS(.v9)],
    products: [
        .library(name: "Primitive", targets: ["Primitive"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking", branch: "master"),
        .package(url: "https://github.com/Alamofire/Alamofire", branch: "master"),
        .package(url: "https://github.com/onevcat/APNGKit", branch: "master"),
        .package(url: "https://github.com/AudioKit/AudioKit", branch: "main"),                      // 音频合成
        .package(url: "https://github.com/Swift-Package/BabyBluetooth", branch: "main"),            // 蓝牙库
        .package(url: "https://github.com/CombineCommunity/CombineCocoa", branch: "main"),
        .package(url: "https://github.com/CombineCommunity/CombineExt", branch: "main"),
        .package(url: "https://github.com/Swift-Package/CWLateralSlide", branch: "main"),           // 侧边控制器
        .package(url: "https://github.com/sindresorhus/Defaults", branch: "main"),
        .package(url: "https://github.com/dzenbot/DZNEmptyDataSet", branch: "master"),              // 空数据提示
        .package(url: "https://github.com/ccgus/fmdb", branch: "master"),                           // 数据库
        .package(url: "https://github.com/HeroTransitions/Hero", branch: "develop"),                // 视图控制器转换效果
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager", branch: "master"),       // 键盘响应管理
        .package(url: "https://github.com/joeldev/JLRoutes", branch: "master"),                     // 路由
        .package(url: "https://github.com/onevcat/Kingfisher", branch: "master"),                   // 图片加载
        .package(url: "https://github.com/Swift-Package/MasonryXCF", branch: "main"),               // 布局
        .package(url: "https://github.com/jdg/MBProgressHUD", branch: "master"),                    // 加载动画
        .package(url: "https://github.com/CoderMJLee/MJExtension", branch: "master"),               // 模型转换
        .package(url: "https://github.com/CoderMJLee/MJRefresh", branch: "master"),                 // 下拉刷新
        .package(url: "https://github.com/Swift-Package/MQTTClient", branch: "main"),               // MQTT
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView", branch: "master"),    // 加载动画
        .package(url: "https://github.com/PureLayout/PureLayout", branch: "master"),
        .package(url: "https://github.com/Swift-Package/ReactiveObjcXCF", branch: "main"),
        .package(url: "https://github.com/SDWebImage/SDWebImage", branch: "master"),
        .package(url: "https://github.com/Swift-Package/Skywalker", branch: "main"),
        .package(url: "https://github.com/SnapKit/SnapKit", branch: "develop"),
        .package(url: "https://github.com/ivanvorobei/SPIndicator", branch: "main"),
        .package(url: "https://github.com/yonat/SweeterSwift", branch: "master"),
        .package(url: "https://github.com/SwifterSwift/SwifterSwift", branch: "master"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", branch: "master"),                // JSON
        .package(url: "https://github.com/Swift-Package/TZImagePickerControllerXCF", branch: "main"),// 照片选择
        .package(url: "https://github.com/Swift-Package/YYKitXCF", branch: "main"),                 // YYKit
    ],
    targets: [
        .target(
            name: "Primitive",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "APNGKit", package: "APNGKit"),
                .product(name: "AudioKit", package: "AudioKit"),
                .product(name: "BabyBluetooth", package: "BabyBluetooth"),
                .product(name: "CombineCocoa", package: "CombineCocoa"),
                .product(name: "CombineExt", package: "CombineExt"),
                .product(name: "CWLateralSlide", package: "CWLateralSlide"),
                .product(name: "Defaults", package: "Defaults"),
                .product(name: "DZNEmptyDataSet", package: "DZNEmptyDataSet"),
                .product(name: "FMDB", package: "FMDB"),
                .product(name: "Hero", package: "Hero"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "JLRoutes", package: "JLRoutes"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "Masonry", package: "MasonryXCF"),
                .product(name: "MBProgressHUD", package: "MBProgressHUD"),
                .product(name: "MJExtension", package: "MJExtension"),
                .product(name: "MJRefresh", package: "MJRefresh"),
                .product(name: "MQTTClient", package: "MQTTClient"),
                .product(name: "NVActivityIndicatorView", package: "NVActivityIndicatorView"),
                .product(name: "NVActivityIndicatorViewExtended", package: "NVActivityIndicatorView"),
                .product(name: "PureLayout", package: "PureLayout"),
                .product(name: "ReactiveObjc", package: "ReactiveObjcXCF"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "Skywalker", package: "Skywalker"),
                .product(name: "SkywalkerOC", package: "Skywalker"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "SPIndicator", package: "SPIndicator"),
                .product(name: "SweeterSwift", package: "SweeterSwift"),
                .product(name: "SwifterSwift", package: "SwifterSwift"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "TZImagePickerController", package: "TZImagePickerControllerXCF"),
                .product(name: "YYKit", package: "YYKitXCF")
            ]),
        .testTarget(
            name: "PrimitiveTests",
            dependencies: ["Primitive"]),
    ]
)
