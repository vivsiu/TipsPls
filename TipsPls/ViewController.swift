//
//  ViewController.swift
//  TipsPls
///Users/Vivien/Documents/Xcode Apps/TipsPls/README
//  Created by Vivien Siu on 2/10/17.
//  Copyright © 2017 Vivien Siu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Basic feature variables
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipTotalView: UIView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    // Split feature variables
    @IBOutlet weak var splitView: UIView!
    @IBOutlet weak var splitTwoTotalLabel: UILabel!
    @IBOutlet weak var splitThreeTotalLabel: UILabel!
    @IBOutlet weak var splitFourTotalLabel: UILabel!
    
    // Default tip percentages
    var tipPercentages:[Double] = [0.18, 0.20, 0.25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Make the bill field become first responder
        billField.becomeFirstResponder()
        
        // On load, animate in these components
        self.tipLabel.alpha = 0
        self.tipAmountLabel.alpha = 0
        self.totalLabel.alpha = 0
        self.totalAmountLabel.alpha = 0
        self.tipTotalView.alpha = 0
        UIView.animate(withDuration: 1, animations:{
            self.tipLabel.alpha = 1
            self.tipAmountLabel.alpha = 1
            self.totalLabel.alpha = 1
            self.totalAmountLabel.alpha = 1
            self.tipTotalView.alpha = 1
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Set default percentages for Settings
        let destViewController: SettingsViewController = segue.destination as! SettingsViewController
        for index in 0 ..< 3 {
            destViewController.tipPercentages[index] = tipPercentages[index]
        }
    }
    
    @IBAction func onTap(_ sender: Any) {
        // Dismiss the keyboard when tapping on the main view
        view.endEditing(true)
        
        // Animate the Split view
        self.splitView.alpha = 0
        UIView.animate(withDuration: 1, animations:{
            self.splitView.alpha = 1
        })
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        // Calculate the tip & total
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total amount
        tipAmountLabel.text = "+ " + doubleToString(double: tip)
        totalAmountLabel.text = doubleToString(double: total)
        
        // Calculate split totals
        splitTwoTotalLabel.text = doubleToString(double: (total/2))
        splitThreeTotalLabel.text = doubleToString(double: (total/3))
        splitFourTotalLabel.text = doubleToString(double: (total/4))
        
    }
    
    // Converts a double to string with 2 decimal places
    func doubleToString(double: Double) -> String {
        return String(format: "%.2f", double)
    }
    
}


