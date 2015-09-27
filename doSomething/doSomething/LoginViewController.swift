//
//  LoginViewController.swift
//  doSomething
//
//  Created by Carlos Gonzalez on 9/27/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    


    @IBAction func signInClicked(sender: UIButton) {
        self.performSegueWithIdentifier("showMain", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
