//
//  NewTaskViewController.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    @IBOutlet var task: UITextField!
    @IBOutlet var amount: UITextField!
    @IBOutlet var details: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createTask(sender: AnyObject) {
        taskManager.addTask(task.text!, amount: amount.text!, details: details.text!)
        self.view.endEditing(true)
        print(taskManager.tasks[0])
        self.tabBarController?.selectedIndex = 1
    }
    
}