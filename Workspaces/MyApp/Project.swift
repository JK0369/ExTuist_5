import ProjectDescription

let project = Project(
    name: "MyApp",
    targets: [
        Target(
            name: "MyApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.jake.MyApp",
            infoPlist: .extendingDefault(with: [
                "CFBundleShortVersionString": "1.0",
                "CFBundleVersion": "1",
                "UILaunchStoryboardName": "LaunchScreen"
            ]),
            sources: ["Sources/**"], // Sources/**누락 시 .swift 파일 수동으로 add files해야 추가됨
            resources: ["Sources/**"], // Sources/**누락 시 LaunchScreen.storyboard 파일 수동으로 add files해야 추가됨
            dependencies: [
                .project(target: "MyApp2", path: "../MyApp2"),
                .project(target: "MyApp3", path: "../MyApp3")
            ]
        )
    ]
)
