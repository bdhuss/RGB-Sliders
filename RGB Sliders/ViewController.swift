//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Bryan Huss on 2/9/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let redLabel = UILabel()
    let greenLabel = UILabel()
    let blueLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set app background to white
        self.view.backgroundColor = UIColor.white
        
        // set up labels
        redLabel.text = "Red"
        redLabel.textColor = .black
        self.view.addSubview(redLabel)
        
    }

}
