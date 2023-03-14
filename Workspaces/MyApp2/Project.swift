import ProjectDescription

let project = Project(
    name: "MyApp2",
    targets: [
        Target(
            name: "MyApp2",
            platform: .iOS,
            product: .framework,
            bundleId: "com.jake.MyApp2",
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
