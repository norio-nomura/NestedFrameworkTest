//
//  InterfaceController.swift
//  watchOSApp Extension
//
//  Created by 野村 憲男 on 10/5/15.
//  Copyright © 2015 Norio Nomura. All rights reserved.
//

import WatchKit
import Foundation
import NestedFramework

class InterfaceController: WKInterfaceController {

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
    
    var sliderValue: Float = 0.0
    @IBAction func sliderChanged(value: Float) {
        sliderValue = value
    }
    
    @IBOutlet var slider: WKInterfaceSlider!
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "base32" {
            return "\(sliderValue)"
        }
        return nil
    }
    
}
