//
//  ViewController.swift
//  tippyCalc
//
//  Created by Jameel Brice on 1/15/20.
//  Copyright © 2020 Jameel. All rights reserved.
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

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
   
    @IBAction func calculateTip(_ sender: Any) {
        //GET BILL AMOUNT
        let bill = Double(billField.text!) ?? 0
             
             //CALCULATE THE TIP AND TOTAL
        let tipPercentages = [0.1,0.15,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
             let total = bill + tip
             //UPDATE THE TIP AND TOATAL
             tipLabel.text = String(format: "$%.1f",tip)
        totalLabel.text = String(format:"$%.2f",total)
    }
    
    }
    

