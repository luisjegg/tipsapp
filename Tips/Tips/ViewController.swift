//
//  ViewController.swift
//  Tips
//
//  Created by Luis Carrillo on 1/6/21.
//  Copyright © 2021 Luis Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
   
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

@IBAction func onTap(_ sender: Any){
    print("Hello")
    
    view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
    // Calculate the Tip and Total
        let tipPer = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPer[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
    // Update the tip and total labels
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

