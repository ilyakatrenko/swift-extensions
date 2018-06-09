
import Foundation

extension UIView {
    
    public func makeConstraints(visualFormat: String,
                         options: NSLayoutFormatOptions = .directionLeadingToTrailing,
                         metrics: [String: Any]? = nil,
                         views: [String: Any]) {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: visualFormat,
                                                      options: options,
                                                      metrics: metrics,
                                                      views: views))
    }
    
}
