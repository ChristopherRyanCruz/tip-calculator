//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Chris Cruz on 4/13/15.
//  Copyright (c) 2015 Chris Cruz. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    let tipValues = [0.15, 0.20, 0.25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func totalChanged(sender: AnyObject) {
        updateValues()
    }
    
    @IBAction func totalEntered(sender: AnyObject) {
        updateTotal()
    }

    @IBAction func tapped(sender: AnyObject) {
        updateValues()
        view.endEditing(true)
    }
    
    func updateValues() {
        var billTotal = billField.text
        var tipPercentage = tipValues [ tipPercentControl.selectedSegmentIndex]
        var tipAmount = NSString(string: billTotal).doubleValue * tipPercentage
        var totalAmount = NSString(string: billTotal).doubleValue + tipAmount
        tipLabel.text = String(format: "$%.2f",  tipAmount)
        totalLabel.text = String(format: "$%.2f",  totalAmount)
    }
    
    func updateTotal () {
        if NSString(string: billField.text).doubleValue == 0 {
            billField.text = "";
        } else {
            billField.text = String(format: "%.2f",  NSString(string: billField.text).doubleValue)
        }
    }
}

