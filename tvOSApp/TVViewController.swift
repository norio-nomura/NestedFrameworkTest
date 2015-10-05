//
//  TVViewController.swift
//  tvOSApp
//
//  Created by 野村 憲男 on 10/5/15.
//  Copyright © 2015 Norio Nomura. All rights reserved.
//

import UIKit
import NestedFramework

class TVViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func textChanged(sender: UITextField) {
        guard let text = sender.text else { return }
        let base32 = Base32(string: text)
        label.text = base32.base32
    }

}

