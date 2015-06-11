//
//  FirstController.swift
//  exp6
//
//  Created by Lucas Lima on 6/11/15.
//  Copyright (c) 2015 Victor Souza. All rights reserved.
//

import WatchKit
import Foundation


class FirstController: WKInterfaceController {

    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    let defaults = NSUserDefaults.standardUserDefaults()

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var totalAmount = defaults.stringForKey("totalAmount")
        
        println(totalAmount)
        
        totalLabel.setText("$\(totalAmount)")
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
