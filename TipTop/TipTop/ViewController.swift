//
//  ViewController.swift
//  TipTop
//
//  Created by Yijin Kang on 6/14/16.
//  Copyright © 2016 Yijin Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var percentSegCon: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var youPayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let split = Double(splitField.text!) ?? 1
        let tip = bill * tipPercentages[percentSegCon.selectedSegmentIndex]
        let total = bill + tip
        let pay = total / split
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        youPayLabel.text = String(format: "$%.2f", pay)
        
    }
    
    

}

