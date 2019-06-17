//
//  SettingTableViewCell.swift
//  Settings27
//
//  Created by Drew Seeholzer on 6/17/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

//Define the protocol
protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    //Define the delegate
    weak var cellDelegate: SettingCellDelegate?
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        self.backgroundColor = settingSwitch.isOn ? .cyan: .white
    }
    @IBAction func settingCellToggle(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
}
