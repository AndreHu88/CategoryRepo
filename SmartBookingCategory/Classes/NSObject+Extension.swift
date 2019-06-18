//
//  NSObject+Extension.swift
//  SmartOffice
//
//  Created by Duntech on 2018/10/20.
//  Copyright © 2018年 Jack Hu All rights reserved.
//

import Foundation

extension NSObject {
    
    
    class var nameOfClass: String {
        return (NSStringFromClass(self).components(separatedBy: ".").last) ?? ""
    }
        
    
    //用于获取 cell 的 reuse identifier
    class var identifier: String {
        return String(format: "%@_identifier", self.nameOfClass)
    }
    
    /// 设置关联对象
    func setAssociatedObject(_ obj : AnyObject,key : UnsafeRawPointer) {
        objc_setAssociatedObject(self, key, obj, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    /// 获取关联对象
    func associatedObjectForKey(_ key : UnsafeRawPointer) -> AnyObject? {
        return objc_getAssociatedObject(self, key) as AnyObject?
    }
    
    /// 去掉所有关联对象
    func removeAssociatedObjects() {
        objc_removeAssociatedObjects(self)
    }
    
    func postNotification(_ name:String,object : AnyObject? = nil,userInfo : [String : AnyObject]? = nil) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: name), object: object,userInfo:userInfo )
    }
    
    func addNotificationObserver(_ selector : Selector,name : String?,object : AnyObject?) {
        NotificationCenter.default.addObserver(self, selector: selector, name: name.map { NSNotification.Name(rawValue: $0) }, object: object)
    }
    
    func removeNotificationObserver() {
        NotificationCenter.default.removeObserver(self)
    }
}
