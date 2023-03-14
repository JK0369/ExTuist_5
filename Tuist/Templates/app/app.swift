import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute
    ],
    items: [
        .file(
            path: "Workspaces/\(nameAttribute)/Project.swift",
            templatePath: "Project.stencil"
        ),
        .file(
            path: "Workspace.swift",
            templatePath: "Workspace.stencil"
        ),
        .file(
            path: "Workspaces/\(nameAttribute)/Sources/AppDelegate.swift",
            templatePath: "AppDelegate.stencil"
        ),
        .file(
            path: "Workspaces/\(nameAttribute)/Sources/ViewController.swift",
            templatePath: "ViewController.stencil"
        ),
        .file(
            path: "Workspaces/\(nameAttribute)/Sources/LaunchScreen.storyboard",
            templatePath: "LaunchScreen.stencil"
        )
    ]
)
