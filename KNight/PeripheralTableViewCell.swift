//
//  PeripheralTableViewCell.swift
//  KNight
//
//  Created by Nhu Nguyen on 4/9/19.
//  Copyright © 2019 Nhu Nguyen. All rights reserved.
//

import UIKit

class PeripheralTableViewCell: UITableViewCell {

    
    @IBOutlet weak var peripheralLabel: UILabel!
    @IBOutlet weak var rssiLabel: UILabel!
    @IBOutlet weak var isConnectedLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
