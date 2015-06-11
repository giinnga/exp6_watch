//
//  InterfaceController.swift
//  exp6 WatchKit Extension
//
//  Created by Victor Souza on 6/10/15.
//  Copyright (c) 2015 Victor Souza. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    var actualDolarValue = 0
    var actualCentsValue = 0
    
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
        
        if self.dolarSelected {
            
            self.actualDolarValue++
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
        
        else {
            
            self.actualCentsValue++
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    @IBAction func fiveMore() {
        
        if self.dolarSelected {
            
            self.actualDolarValue += 5
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
            
        else {
            
            self.actualCentsValue += 5
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    @IBAction func tenMore() {
        
        if self.dolarSelected {
            
            self.actualDolarValue += 10
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
            
        else {
            
            self.actualCentsValue += 10
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    @IBAction func oneLess() {
        
        if self.dolarSelected {
            
            self.actualDolarValue -= 1
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
            
        else {
            
            self.actualCentsValue -= 1
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    @IBAction func fiveLess() {
        
        if self.dolarSelected {
            
            self.actualDolarValue -= 5
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
            
        else {
            
            self.actualCentsValue -= 5
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    @IBAction func tenLess() {
        
        if self.dolarSelected {
            
            self.actualDolarValue -= 10
            
            self.dolarLabel.setText("\(self.actualDolarValue)")
            
        }
            
        else {
            
            self.actualCentsValue -= 10
            
            self.centsLabel.setText("\(self.actualCentsValue)")
            
        }
        
    }
    
    
    
    
    
    
    
    
}
