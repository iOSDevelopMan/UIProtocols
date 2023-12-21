import UIKit

public protocol Xibable where Self: UIView {
    static var nibName: String { get }
    static var nib: UINib { get }
    static func xibView() -> Self
}

public extension Xibable {
    static var nibName: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func xibView() -> Self {
        return nib.instantiate(withOwner: nil, options: nil)[0] as! Self
    }
}
