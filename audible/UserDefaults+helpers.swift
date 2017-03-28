//
//  UserDefaults+helpers.swift
//  audible
//
//  Created by Myron Hicks on 3/28/17.
//  Copyright © 2017 Myron Hicks. All rights reserved.
//

import Foundation


extension UserDefaults {
    
    enum UserDefaultsKeys : String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
