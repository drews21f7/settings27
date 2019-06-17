//
//  SettingController.swift
//  Settings27
//
//  Created by Drew Seeholzer on 6/17/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation

class SettingController {
    
    //Singleton
    static let sharedInstance = SettingController()
    
    let settings: [Setting] = {
        
        let music = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "music"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "apps"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "books"), isOn: true)
        
        return [music, appStore, iBooks]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
