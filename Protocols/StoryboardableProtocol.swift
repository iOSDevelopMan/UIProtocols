import UIKit

public protocol Storyboardable where Self: UIViewController {
    static var storyboardName: String { get }
    static func storyboardController() -> Self
}

public extension Storyboardable {
    static var storyboardName: String {
        return String(describing: self)
    }
    
    static func storyboardController() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let storyboardVC = storyboard.instantiateInitialViewController()
        return storyboardVC as! Self
    }
}
