//
//  DemoTableViewCell.swift
//  DynamicSegementDemo
//
//  Created by LogicalWings Mac on 10/08/18.
//  Copyright © 2018 LogicalWings Mac. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
