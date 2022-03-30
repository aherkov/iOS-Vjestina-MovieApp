import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        presentExampleViewController()
        return true
    }
    
    private func presentExampleViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MovieDetailsViewController()
        window?.makeKeyAndVisible()
    }
    
    
}

