//
//  User.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/15/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import Foundation
import UIKit

class User {
    
    let username:String
    let profileImage:UIImage
    
//    Now we are adding an initializer - a function that will create the object. It needs two inputs, a string and an image, which correlates with what we just created above. Then we make the variables above equivalent to the variables we have initiated. 
//
//    I'm doing the same self. thing that we did for the Post file'
   
    init(username:String, profileImage:UIImage){
        self.username = username
        self.profileImage = profileImage
        
    }

}



