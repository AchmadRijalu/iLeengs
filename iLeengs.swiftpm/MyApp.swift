import SwiftUI


struct LandscapeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Not needed for this example
    }
    
    static func dismantleUIViewController(_ uiViewController: UIViewController, coordinator: ()) {
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
}

@main

struct MyApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
