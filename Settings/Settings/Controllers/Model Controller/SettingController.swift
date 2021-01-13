//
//  SettingController.swift
//  Settings
//
//  Created by Devin Flora on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    static let shared = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return [music, appStore, books]
        
    }()
    
    func toggleIsOn(setting: Setting) {
        //Toggle Boolean status
        setting.isOn.toggle()
        
        // Setting is the opposite of the current
        //setting.isOn = !setting.isOn
        
        //If else
        //        if setting.isOn == true {
        //            setting.isOn = false
        //        } else {
        //            setting.isOn = true
        //        }
        
    }
}//End of class
