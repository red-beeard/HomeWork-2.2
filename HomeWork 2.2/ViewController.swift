//
//  ViewController.swift
//  HomeWork 2.2
//
//  Created by Red Beard on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewWithColor: UIView!
    
    @IBOutlet weak var valueOfRed: UILabel!
    @IBOutlet weak var valueOfGreen: UILabel!
    @IBOutlet weak var valueOfBlue: UILabel!
    
    @IBOutlet weak var sliderOfRedColor: UISlider!
    @IBOutlet weak var sliderOfGreenColor: UISlider!
    @IBOutlet weak var sliderOfBlueColor: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWithColor.layer.cornerRadius = 10
        
        valueOfRed.text = String(format: "%3.2f", sliderOfRedColor.value)
        valueOfGreen.text = String(format: "%3.2f", sliderOfGreenColor.value)
        valueOfBlue.text = String(format: "%3.2f", sliderOfBlueColor.value)
        
        viewWithColor.backgroundColor = getCurrentColorFromSlider()

    }
    
    @IBAction func sliderRedColorAction() {
        valueOfRed.text = String(format: "%.2f", sliderOfRedColor.value)
        
        viewWithColor.backgroundColor = getCurrentColorFromSlider()
    }
    
    @IBAction func sliderGreenColorAction() {
        valueOfGreen.text = String(format: "%.2f", sliderOfGreenColor.value)
        
        viewWithColor.backgroundColor = getCurrentColorFromSlider()
    }
    
    @IBAction func sliderBlueColorAction() {
        valueOfBlue.text = String(format: "%.2f", sliderOfBlueColor.value)
        
        viewWithColor.backgroundColor = getCurrentColorFromSlider()
    }
    
    private func getCurrentColorFromSlider() -> UIColor {
        UIColor(red: CGFloat(sliderOfRedColor.value),
                green: CGFloat(sliderOfGreenColor.value),
                blue: CGFloat(sliderOfBlueColor.value),
                alpha: viewWithColor.alpha)
    }
}

