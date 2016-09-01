//
//  SelfieCell.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/17/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import UIKit
import Parse

class SelfieCell: UITableViewCell {
    
    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func likeButtonPressed(sender: UIButton) {
        
        // the ! symbol means NOT
        // We are therefore setting the button's selected state to
        // the opposite of what it was. This is a great way to toggle
        // a button from on to off and visa-versa
        sender.selected = !sender.selected
        
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
