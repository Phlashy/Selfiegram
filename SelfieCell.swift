//
//  SelfieCell.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/17/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import UIKit

class SelfieCell: UITableViewCell {
    
    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
