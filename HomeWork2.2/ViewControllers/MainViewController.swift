//
//  MainViewController.swift
//  HomeWork2.2
//
//  Created by Admin on 15.02.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColorMainView(
        displayP3Red:CGFloat,
        green:CGFloat,
        blue:CGFloat,
        alpha: Float
)
}

class MainViewController: UIViewController {

    @IBOutlet var colorizedView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else{ return }
        if segue.identifier == "showSettingScreen"{
            settingVC.delegate = self
        }
    }
    
    @IBAction func settingButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showSettingScreen", sender: nil)
    }

    @IBAction func unwindSegueToLoginScreen(segue: UIStoryboardSegue) { }
}

extension MainViewController: SettingsViewControllerDelegate{
    func setColorMainView(
        displayP3Red: CGFloat,
        green: CGFloat,
        blue: CGFloat,
        alpha: Float) {
        
        colorizedView.backgroundColor = UIColor(
            displayP3Red: displayP3Red,
            green: green,
            blue: blue,
            alpha: CGFloat(alpha))
    }
}
