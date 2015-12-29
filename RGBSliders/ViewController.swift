//
//  ViewController.swift
//  RGBSliders
//
//  Created by Ricardo Rodriguez on 12/29/15.
//  Copyright © 2015 Ricardo Rodriguez P. All rights reserved.
//heres comment for GIT control

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderRED: UISlider!
    @IBOutlet weak var sliderGREEN: UISlider!
    @IBOutlet weak var sliderBLUE: UISlider!
    
//    @IBOutlet weak var colorSquare: UIView!
    
    
    @IBOutlet weak var colorSquare: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBGColor()
        colorSquare.layer.backgroundColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBGColor() {
        let red = CGFloat(sliderRED.value)
        let green = CGFloat(sliderGREEN.value)
        let blue = CGFloat(sliderBLUE.value)
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

