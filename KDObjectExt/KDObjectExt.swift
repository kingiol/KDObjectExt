//
//  KDObjectExt.swift
//  KDObjectExt
//
//  Created by Kingiol on 06/05/2017.
//  Copyright © 2017 7Plum. All rights reserved.
//

import Foundation

public extension NSObject {
    
    fileprivate static var ExtAssociatedKey = "ExtAssociatedKey"
    
    fileprivate func lock(_ closure: () -> Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        closure()
    }
    
    var extValues: [String: Any] {
        get {
            var returnV = [String: Any]()
            lock {
                let value = objc_getAssociatedObject(self, &NSObject.ExtAssociatedKey) as? [String: Any]
                if let value = value {
                    returnV = value
                }
            }
            return returnV
        }
        set {
            lock {
                objc_setAssociatedObject(self, &NSObject.ExtAssociatedKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    func extValue<T>(`for` key: String, valueType: T.Type) -> T? {
        return extValues[key] as? T
    }
    
    @discardableResult
    func setExtValue(`for` key: String, with value: Any, ignoreExist: Bool = true) -> Bool {
        var _extValues = extValues
        
        if !ignoreExist, let _ = _extValues[key] {
            return false
        }
        
        _extValues[key] = value
        extValues = _extValues
        
        return true
    }
    
}
