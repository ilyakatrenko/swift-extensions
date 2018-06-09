
import Foundation

// MARK: - Storyboards list
extension UIStoryboard {
    
    public static var main: UIStoryboard {
        return UIStoryboard(name: "Main")
    }
    
}

// MARK: - Tools
extension UIStoryboard {
    
    public convenience init(name: String, bundle: Bundle? = nil) {
        self.init(name: name, bundle: bundle)
    }
    
    public func viewController<T: UIViewController>(identifier: String = String(describing: T.self)) -> T {
        return instantiateViewController(withIdentifier: identifier) as! T
    }
    
}
