//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Bryan Huss on 2/9/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSliderBar: UISlider!
    @IBOutlet weak var greenSliderBar: UISlider!
    @IBOutlet weak var blueSliderBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // Set app background to white
        self.view.backgroundColor = UIColor.white
        
        // Set all sliders to 1.0 for a white background
        redSliderBar.value = 1.0
        greenSliderBar.value = 1.0
        blueSliderBar.value = 1.0
    }


    @IBAction func sliderChanged(_ sender: Any) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderBar.value), green: CGFloat(greenSliderBar.value), blue: CGFloat(blueSliderBar.value), alpha: 1.0)
    }
}

