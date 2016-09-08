//
//  ViewController.swift
//  Selfiegram
//
//  Created by Gordon Casey on 8/3/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.titleView = UIImageView(image: UIImage(named: "Selfigram-logo"))

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

