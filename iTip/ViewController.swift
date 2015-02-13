//
//  ViewController.swift
//  iTip
//
//  Created by Beyan, Koiwu on 2/12/15.
//  Copyright (c) 2015 Beyan, Koiwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
           // println("User editing")
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

