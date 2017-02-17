//
//  SettingsViewController.swift
//  TipsPls
//
//  Created by Vivien Siu on 2/12/17.
//  Copyright © 2017 Vivien Siu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UINavigationControllerDelegate {
    
    var tipPercentages: [Double] = [0.18, 0.20, 0.25]
    
    @IBOutlet weak var settingsFirstPercentField: UITextField!
    @IBOutlet weak var settingsSecondPercentField: UITextField!
    @IBOutlet weak var settingsThirdPercentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the default value of the 3 percentage text fields
        settingsFirstPercentField.text = doubleToStringPercent(double: tipPercentages[0])
        settingsSecondPercentField.text = doubleToStringPercent(double: tipPercentages[1])
        settingsThirdPercentField.text = doubleToStringPercent(double: tipPercentages[2])
        
        navigationController?.delegate = self
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let controller = viewController as? ViewController {
            
            // Update the segmentation control based on the new settings
            controller.tipPercentages[0] = stringToDoublePercent(string: settingsFirstPercentField.text!)
            controller.tipPercentages[1] = stringToDoublePercent(string: settingsSecondPercentField.text!)
            controller.tipPercentages[2] = stringToDoublePercent(string: settingsThirdPercentField.text!)
            controller.tipControl.setTitle(settingsFirstPercentField.text! + "%", forSegmentAt: 0)
            controller.tipControl.setTitle(settingsSecondPercentField.text! + "%", forSegmentAt: 1)
            controller.tipControl.setTitle(settingsThirdPercentField.text! + "%", forSegmentAt: 2)

            // Recalculate the tip when returning to the calculator
            controller.calculateTip(self)
        }
    }
    
    // Converts a given Double that represents a percentage to a String value, e.g. Double 0.10 returns String "10"
    func doubleToStringPercent(double: Double) -> String {
        return String(format: "%u", Int(double * 100))
    }
    
    // Converts a given String that represents a percentage to a Double, e.g. String "10" returns Double 0.10
    func stringToDoublePercent(string: String) -> Double {
        return (Double(string) ?? 10)/100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
