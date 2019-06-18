//
//  URL+Extension.swift
//  SmartBooking
//
//  Created by Jack on 2019/6/17.
//  Copyright © 2019 Jack Hu. All rights reserved.
//

import Foundation


extension URL {
    
    var isNetworkUrl : Bool {
        
        switch scheme {
        case "http", "https":
            return true
        default:
            return false
        }
    }
    
    
}
