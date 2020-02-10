//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Bryan Huss on 2/9/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redLabel: UILabel!
    var greenLabel: UILabel!
    var blueLabel: UILabel!
    
    var redSlider: UISlider!
    var greenSlideer: UISlider!
    var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUIObjects()
    }
    
    func initUIObjects() {
        view.backgroundColor = UIColor.white
        
        redLabel = UILabel()
        redLabel.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 50, y: 50, width: 100, height: 50)
        redLabel.text = "RED"
        redLabel.font = UIFont.systemFont(ofSize: 40)
        redLabel.textAlignment = .center
        view.addSubview(redLabel)
        
        redSlider = UISlider(frame: CGRect(x: 20, y: 100, width: 335, height: 15))
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 255 / 2
        view.addSubview(redSlider)
        
    }

}
