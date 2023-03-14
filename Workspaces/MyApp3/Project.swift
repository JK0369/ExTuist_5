import ProjectDescription

let project = Project(
    name: "MyApp3",
    targets: [
        Target(
            name: "MyApp3",
            platform: .iOS,
            product: .staticFramework,
            bundleId: "com.jake.MyApp3",
            infoPlist: .extendingDefault(with: [
                "CFBundleShortVersionString": "1.0",
                "CFBundleVersion": "1",
                "UILaunchStoryboardName": "LaunchScreen"
            ]),
            sources: ["Sources/**"], // Sources/**누락 시 .swift 파일 수동으로 add files해야 추가됨
            resources: ["Sources/**"], // Sources/**누락 시 LaunchScreen.storyboard 파일 수동으로 add files해야 추가됨
            dependencies: [
            ]
        )
    ]
)
