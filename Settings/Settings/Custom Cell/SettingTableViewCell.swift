//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Devin Flora on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

// 1) Create the protocol. (BOSS)
//Protocol - typically written above the class
protocol SettingCellDelegate: AnyObject {
    //1.5) State what the boss can do
    func settingSwitchToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //2) Set the delegate - Who the boss' (employee) is
    weak var delegate: SettingCellDelegate?
    
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        //3) Communicate to delegate (employee) instruction
        delegate?.settingSwitchToggled(cell: self)
    }
    
    // MARK: - Helper Functions
    func updateViews(setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        if setting.isOn {
            self.backgroundColor = .cyan
        } else {
            self.backgroundColor = .white
        }
    }
}//End of Class
