//
//  TableViewCell.swift
//  UserListApp
//
//  Created by BridgeLabz Solutions LLP  on 5/17/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
