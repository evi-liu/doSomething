//
//  ThirdViewController.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var email: UILabel!
    @IBOutlet var bankAccount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Input current user email
        email.text = "hello@hello.com"
        // Input current bank account number
        bankAccount.text = "123456"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

