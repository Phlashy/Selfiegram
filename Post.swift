//
//  Post.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/15/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    let imageURL:NSURL
    let user:User
    let comment:String
    
//    When I first did this I copied the format from the User class (anImage, aUser etc) but this is actually where we can use 'self' - in this case we use the same name when we initialise them and then when we make them equivalent to the variables above, we use self. For clarity I'm commenting out the first attempt so you can see what I did.
    
//    init (anImage:UIImage, aUser:User, aComment:String){
//        
//        image = anImage
//        user = aUser
//        comment = aComment
//        
//    }
    
    init (imageURL:NSURL, user:User, comment:String) {
        
        self.imageURL = imageURL
        self.user = user
        self.comment = comment
        
    }
}
