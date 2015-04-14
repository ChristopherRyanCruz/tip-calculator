//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Chris Cruz on 4/14/15.
//  Copyright (c) 2015 Chris Cruz. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipPicker: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDefaultTipIndex();
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        loadDefaultTipIndex()
    }
    
    func loadDefaultTipIndex() {
        defaultTipPicker.selectedSegmentIndex = SettingsManager.sharedSettingsManager().getDefaultTipIndex()
    }
    
    @IBAction func defaultTipChanged(sender: UISegmentedControl) {
        SettingsManager.sharedSettingsManager().setTipIndex(defaultTipPicker.selectedSegmentIndex)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}