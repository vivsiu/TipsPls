//
//  ViewController.swift
//  TipsPls
///Users/Vivien/Documents/Xcode Apps/TipsPls/README
//  Created by Vivien Siu on 2/10/17.
//  Copyright © 2017 Vivien Siu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var separatorView: UIView!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // On load, animate in all components except the bill label and field on the app
        self.tipControl.alpha = 0
        self.tipLabel.alpha = 0
        self.tipAmountLabel.alpha = 0
        self.separatorView.alpha = 0
        self.totalLabel.alpha = 0
        self.totalAmountLabel.alpha = 0
        UIView.animate(withDuration: 2, animations:{
            self.tipControl.alpha = 1
            self.tipLabel.alpha = 1
            self.tipAmountLabel.alpha = 1
            self.separatorView.alpha = 1
            self.totalLabel.alpha = 1
            self.totalAmountLabel.alpha = 1
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        // Dismiss the keyboard when tapping on the main view
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        // Tip percentages from the segmented control
        let tipPercentages = [0.18, 0.2, 0.25]
        
        // Calculate the tip & total
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total amount
        tipAmountLabel.text = String(format: "%.2f", tip)
        totalAmountLabel.text = String(format: "%.2f", total)
    }

}


