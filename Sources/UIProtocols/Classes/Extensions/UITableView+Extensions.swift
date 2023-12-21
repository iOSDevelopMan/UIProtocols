import UIKit

extension UITableView {
    public func register<T: UITableViewCell>(_: T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    public func registerNib<T: UITableViewCell>(_: T.Type) {
        register(T.nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    public func registerHeaderNib<T: UITableViewHeaderFooterView>(_: T.Type) {
        register(T.nib, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
    
    public func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(for section: Int) -> T {
        guard let headerView = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T else {
            fatalError("Could not dequeue view with identifier: \(T.reuseIdentifier)")
        }
        return headerView
    }
}

