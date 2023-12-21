import UIKit

extension UICollectionView {
    public var flowLayout: UICollectionViewFlowLayout? { collectionViewLayout as? UICollectionViewFlowLayout }
    
    public func register<T: UICollectionViewCell>(_: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    public func registerNib<T: UICollectionViewCell>(_: T.Type) {
        register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    public func registerHeaderNib<T: UICollectionReusableView>(_: T.Type) {
        register(T.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.reuseIdentifier)
    }
    
    public func registerFooterNib<T: UICollectionReusableView>(_: T.Type) {
        register(T.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.reuseIdentifier)
    }
    
    public func dequeueReusableHeaderView<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        guard let headerView = dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                withReuseIdentifier: T.reuseIdentifier,
                                                                for: indexPath) as? T else {
            fatalError("Could not dequeue header view with identifier: \(T.reuseIdentifier)")
        }
        return headerView
    }
    
    public func dequeueReusableFooterView<T: UICollectionReusableView>(for indexPath: IndexPath) -> T {
        guard let footerView = dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                                withReuseIdentifier: T.reuseIdentifier,
                                                                for: indexPath) as? T else {
            fatalError("Could not dequeue footer view with identifier: \(T.reuseIdentifier)")
        }
        return footerView
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
