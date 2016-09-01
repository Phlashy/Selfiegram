//
//  Activity.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/31/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Activity:PFObject, PFSubclassing {
    
    @NSManaged var type:String
    @NSManaged var post:Post
    @NSManaged var user:PFUser
    
    static func parseClassName() -> String {
        return "Activity"
    }
    
    // convenience init method, because it’s building on top of PFObject’s init, rather than overriding it.
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.

    convenience init(type:String, post:Post, user:PFUser){
            self.init()
            self.type = type
            self.post = post
            self.user = user
    }
    
}

