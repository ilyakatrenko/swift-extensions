
import Foundation

extension UITableView {
    
    // MARK: - Common methods
    
    func cellForRow<T: UITableViewCell>(at indexPath: IndexPath) -> T? {
        return cellForRow(at: indexPath) as? T
    }
    
    // MARK: - Class registrations
    
    public func registerCellClass(_ classToRegister: AnyClass? = nil, identifier: String) {
        let cellClass: AnyClass
        
        if let newCellClass = classToRegister {
            cellClass = newCellClass
        } else {
            cellClass = NSClassFromString(identifier)!
        }
        
        register(cellClass, forCellReuseIdentifier: identifier)
    }
    
    public func registerCellNib(_ nib: UINib? = nil, identifier: String) {
        let cellNib: UINib
        
        if let newCellNib = nib {
            cellNib = newCellNib
        } else {
            cellNib = UINib(nibName: identifier, bundle: nil)
        }
        
        register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    public func unregisterCell(identifier: String) {
        register(nil as AnyClass?, forCellReuseIdentifier: identifier)
    }
    
    // MARK: - Nib registrations
    
    public func registerHeaderFooterClass(_ classToRegister: AnyClass? = nil, identifier: String) {
        let headerFooterClass: AnyClass
        
        if let newHeaderFooterClass = classToRegister {
            headerFooterClass = newHeaderFooterClass
        } else {
            headerFooterClass = NSClassFromString(identifier)!
        }
        
        register(headerFooterClass, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
    public func registerHeaderFooterNib(_ nib: UINib? = nil, identifier: String) {
        let headerFooterNib: UINib
        
        if let newHeaderFooterNib = nib {
            headerFooterNib = newHeaderFooterNib
        } else {
            headerFooterNib = UINib(nibName: identifier, bundle: nil)
        }
        
        register(headerFooterNib, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
    public func unregisterHeaderFooter(identifier: String) {
        register(nil as AnyClass?, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
}
