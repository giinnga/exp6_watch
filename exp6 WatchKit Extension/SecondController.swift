//
//  InterfaceController.swift
//  exp6 WatchKit Extension
//
//  Created by Victor Souza on 6/10/15.
//  Copyright (c) 2015 Victor Souza. All rights reserved.
//

import WatchKit
import Foundation


class SecondController: WKInterfaceController {
    
    
    var actualDolarValue = 0
    var actualCentsValue = 0
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var dolarLabel: WKInterfaceLabel!
    
    @IBOutlet weak var centsLabel: WKInterfaceLabel!
    
    var dolarSelected: Bool = true
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func changeDolar() {
        
        self.dolarSelected = true
        
    }
    
    @IBAction func changeCents() {
        
        self.dolarSelected = false
        
    }
    
    @IBAction func oneMore() {
        onValueChange(1)
    }
    
    @IBAction func fiveMore() {
        
        onValueChange(5)
        
    }
    
    @IBAction func tenMore() {
        
        onValueChange(10)
    }
    
    @IBAction func oneLess() {
        
        onValueChange(-1)
        
    }
    
    @IBAction func fiveLess() {
        
        onValueChange(-5)
        
    }
    
    @IBAction func tenLess() {
        
        onValueChange(-10)
        
    }
    
    func onValueChange (selectedValue: Int) {
        
        if self.dolarSelected {
            
            self.actualDolarValue += selectedValue
        }
            
        else {
            self.actualCentsValue += selectedValue
        }
        
        setNewValue()
    }
    
    func setNewValue ()
    {
        var totalAmount = ""

        //Tratando as passagens de valor
        if (actualCentsValue < 0) {
            actualCentsValue = 100 + actualCentsValue
            actualDolarValue--
        }
        else if (actualCentsValue == 100)
        {
            actualCentsValue = 0
            actualDolarValue++
        }
        
        else if (actualCentsValue > 100) {
            actualCentsValue = actualCentsValue - 100
            actualDolarValue++
        }
        
        
        //Tratando exibição do valor
        
        self.dolarLabel.setText("\(self.actualDolarValue)")

        if (actualCentsValue < 10)
        {
            totalAmount = "\(self.actualDolarValue).0\(actualCentsValue)"
            self.centsLabel.setText("0\(self.actualCentsValue)")
        }
        else
        {
            totalAmount = "\(self.actualDolarValue).\(actualCentsValue)"
            self.centsLabel.setText("\(self.actualCentsValue)")
        }
        
        defaults.setObject(totalAmount, forKey: "totalAmount")
        defaults.synchronize()

    }
    
    
}

