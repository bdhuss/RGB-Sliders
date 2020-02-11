//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Bryan Huss on 2/9/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables
    var redLabel: UILabel!
    var greenLabel: UILabel!
    var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUIObjects()
    }
    
    // Initialization of UI elements
    func initUIObjects() {
        view.backgroundColor = UIColor.white
        
        redLabel = UILabel()
        redLabel.frame = CGRect(x: view.bounds.width / 2 - 50, y: 50, width: 100, height: 50)
        redLabel.text = "RED"
        redLabel.font = UIFont.systemFont(ofSize: 40)
        redLabel.textAlignment = .center
        // autoresizingMask used for orientation positioning
        redLabel.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin]
        view.addSubview(redLabel)
        
        redSlider = UISlider(frame: CGRect(x: 20, y: 100, width: 335, height: 15))
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 1
        redSlider.isContinuous = true
        redSlider.addTarget(self, action: #selector(ViewController.slidersChanged(_:)), for: .valueChanged)
        // autoresizingMask used for orientation positioning
        redSlider.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin]
        view.addSubview(redSlider)
        
        greenLabel = UILabel()
        //greenLabel.frame = CGRect(x: view.bounds.width / 2 - 75, y: 120, width: 150, height: 50)
        greenLabel.text = "GREEN"
        greenLabel.font = UIFont.systemFont(ofSize: 40)
        greenLabel.textAlignment = .center
        view.addSubview(greenLabel)
        
        greenSlider = UISlider()
        //greenSlider = UISlider(frame: CGRect(x: 20, y: 170, width: 335, height: 15))
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 1
        greenSlider.isContinuous = true
        greenSlider.addTarget(self, action: #selector(ViewController.slidersChanged(_:)), for: .valueChanged)
        view.addSubview(greenSlider)
        
        blueLabel = UILabel()
        //blueLabel.frame = CGRect(x: view.bounds.width / 2 - 50, y: 190, width: 100, height: 50)
        blueLabel.text = "BLUE"
        blueLabel.font = UIFont.systemFont(ofSize: 40)
        blueLabel.textAlignment = .center
        view.addSubview(blueLabel)
        
        blueSlider = UISlider()
        //blueSlider = UISlider(frame: CGRect(x: 20, y: 240, width: 335, height: 15))
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 1
        blueSlider.isContinuous = true
        blueSlider.addTarget(self, action: #selector(ViewController.slidersChanged(_:)), for: .valueChanged)
        view.addSubview(blueSlider)
    }

    // Action listener used track the real time change of the RGB sliders
    @IBAction func slidersChanged(_ sender: UISlider!) {
        // Set the background color equal to the RGB sliders
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 255)
        
        // Inverse the RBG labels text color of the sliders values to insure they are always visible
        redLabel.textColor = UIColor(displayP3Red: CGFloat(1 - redSlider.value), green: CGFloat(1 - greenSlider.value), blue: CGFloat(1 - blueSlider.value), alpha: 255)
        greenLabel.textColor = UIColor(displayP3Red: CGFloat(1 - redSlider.value), green: CGFloat(1 - greenSlider.value), blue: CGFloat(1 - blueSlider.value), alpha: 255)
        blueLabel.textColor = UIColor(displayP3Red: CGFloat(1 - redSlider.value), green: CGFloat(1 - greenSlider.value), blue: CGFloat(1 - blueSlider.value), alpha: 255)
    }
    
    // Determine the orientation of the device and place labels/sliders accordingly (Green & Blue)
    override func viewWillLayoutSubviews() {
        // Landscape orientation
        if UIDevice.current.orientation.isLandscape {
            greenLabel.frame = CGRect(x: view.bounds.width / 2 - 75, y: 120, width: 150, height: 50)
            greenSlider.frame = CGRect(x: 238.5, y: 170, width: 335, height: 15)
            blueLabel.frame = CGRect(x: view.bounds.width / 2 - 50, y: 190, width: 100, height: 50)
            blueSlider.frame = CGRect(x: 238.5, y: 240, width: 335, height: 15)
        }
        // Portrait orientation
        else {
            greenLabel.frame = CGRect(x: view.bounds.width / 2 - 75, y: 120, width: 150, height: 50)
            greenSlider.frame = CGRect(x: 20, y: 170, width: 335, height: 15)
            blueLabel.frame = CGRect(x: view.bounds.width / 2 - 50, y: 190, width: 100, height: 50)
            blueSlider.frame = CGRect(x: 20, y: 240, width: 335, height: 15)
        }
    }
}
