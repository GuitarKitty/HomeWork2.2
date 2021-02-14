//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Admin on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var showColor: UIView!
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
        
    private func changeShowColor(){
        showColor.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderRedColor.value),
            green: CGFloat(sliderGreenColor.value),
            blue: CGFloat(sliderBlueColor.value),
            alpha: 1.0
        )
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showColor.layer.cornerRadius = 20
        changeShowColor()

        redColorValue.text = String(format: "%.2f", sliderRedColor.value)
        greenColorValue.text = String(format: "%.2f", sliderGreenColor.value)
        blueColorValue.text = String(format: "%.2f", sliderBlueColor.value)
    }
    
    @IBAction func redColorChanger() {
        redColorValue.text = String(format: "%.2f", sliderRedColor.value)
        greenColorValue.text = String(format: "%.2f", sliderGreenColor.value)
        blueColorValue.text = String(format: "%.2f", sliderBlueColor.value)
        changeShowColor()
    }

}

func slidersTintColor(){

}

