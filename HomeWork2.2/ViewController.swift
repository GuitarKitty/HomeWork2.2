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
    
    private func redSliderProperty(){
        sliderRedColor.value = 0.0
        sliderRedColor.minimumValue = 0.0
        sliderRedColor.maximumValue = 1.0
        sliderRedColor.tintColor = .red
        
        return
    }
    private func greenSliderProperty(){
        sliderGreenColor.value = 0.0
        sliderGreenColor.minimumValue = 0.0
        sliderGreenColor.maximumValue = 1.0
        sliderGreenColor.tintColor = .green
        return
    }
    private func blueSliderProperty(){
        sliderBlueColor.value = 0.0
        sliderBlueColor.minimumValue = 0.0
        sliderBlueColor.maximumValue = 1.0
        sliderBlueColor.tintColor = .blue
        return
    }
    private func changeShowColor(){
        showColor.backgroundColor = UIColor(displayP3Red: CGFloat(sliderRedColor.value), green: CGFloat(sliderGreenColor.value), blue: CGFloat(sliderBlueColor.value), alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showColor.layer.cornerRadius = 20
        showColor.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0) // т.к. изменение значения начинается после того, как мы используем слайдер - передаем стоковые параметры, для изменяемого фона в viewDidLoad
        
        redSliderProperty()
        blueSliderProperty()
        greenSliderProperty()

        redColorValue.text = String(format: "%.2f", sliderRedColor.value)
        greenColorValue.text = String(format: "%.2f", sliderGreenColor.value)
        blueColorValue.text = String(format: "%.2f", sliderBlueColor.value)
    }
    
    @IBAction func redColorChanger() {
        redColorValue.text = String(format: "%.2f", sliderRedColor.value) // округляем строку до 2-х цифр после запятой
        changeShowColor()
    }
    @IBAction func greenColorChanger() {
        greenColorValue.text = String(format: "%.2f", sliderGreenColor.value)
        changeShowColor()
    }
    @IBAction func blueColorChanger() {
        blueColorValue.text = String(format: "%.2f", sliderBlueColor.value)
        changeShowColor()
    }

}

