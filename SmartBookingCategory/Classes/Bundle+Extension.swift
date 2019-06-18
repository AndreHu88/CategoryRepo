//
//  Bundle+Extension.swift
//  SmartBooking
//
//  Created by Jack on 2019/6/17.
//  Copyright © 2019 Jack Hu. All rights reserved.
//

import Foundation

extension Bundle {
    
    static var releaseVersionNumber: String? {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    static var buildVersionNumber: String? {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as? String
    }
    

}
