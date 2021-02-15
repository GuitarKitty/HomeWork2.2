//
//  SettingViewController.swift
//  HomeWork2.2
//
//  Created by Admin on 30.01.2021.
//

import UIKit

class SettingViewController: UIViewController{
    
    @IBOutlet var showColor: UIView!
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showColor.layer.cornerRadius = 20
        slidersTintColor()
        changeShowColor()
        changeSliderValue()
    }
    
    
    @IBAction func colorChanger() {
        changeSliderValue()
        changeShowColor()
    }
    @IBAction func doneButtonPressed() {
        let displayP3Red = CGFloat(sliderRedColor.value)
        let green = CGFloat(sliderGreenColor.value)
        let blue = CGFloat(sliderBlueColor.value)
        let alpha = CGFloat(1.0)
        if delegate != nil{
        delegate.setColorMainView(
            displayP3Red: displayP3Red,
            green: green,
            blue: blue,
            alpha: Float(alpha))
        dismiss(animated: true)
        }
        }
    
    private func slidersTintColor() {
        sliderRedColor.tintColor = .red
        sliderGreenColor.tintColor = .green
        sliderBlueColor.tintColor = .blue
    }
    
    private func changeShowColor() {
        showColor.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderRedColor.value),
            green: CGFloat(sliderGreenColor.value),
            blue: CGFloat(sliderBlueColor.value),
            alpha: 1.0
        )
    }
    
    private func changeSliderValue() {
        redColorValue.text = String(format: "%.2f", sliderRedColor.value)
        greenColorValue.text = String(format: "%.2f", sliderGreenColor.value)
        blueColorValue.text = String(format: "%.2f", sliderBlueColor.value)
    }

}



