//
//  SettingsManager.swift
//  Tip Calculator
//
//  Created by Chris Cruz on 4/14/15.
//  Copyright (c) 2015 Chris Cruz. All rights reserved.
//

import Foundation

private let _sharedSettingsManager = SettingsManager()

class SettingsManager {
    class func sharedSettingsManager() -> SettingsManager {
        return _sharedSettingsManager
    }
    func getDefaultTipIndex() -> Int {
        var defaults = NSUserDefaults.standardUserDefaults()
        var indexValue = defaults.valueForKey("tipIndex")?.integerValue
        return indexValue!
    }
    
    func setTipIndex(index: Int) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue(index, forKey: "tipIndex")
        defaults.synchronize()
    }
}