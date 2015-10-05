//
//  Base32InterfaceController.swift
//  NestedFrameworkTest
//
//  Created by 野村 憲男 on 10/5/15.
//  Copyright © 2015 Norio Nomura. All rights reserved.
//

import WatchKit
import Foundation
import NestedFramework

class Base32InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if let value = context as? String {
            valueLabel.setText(value)
            let base32 = Base32(string: value).base32
            base32Label.setText(base32)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet var valueLabel: WKInterfaceLabel!
    @IBOutlet var base32Label: WKInterfaceLabel!
}
