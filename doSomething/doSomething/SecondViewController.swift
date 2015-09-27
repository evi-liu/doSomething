//
//  SecondViewController.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var myFeed: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        myFeed.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            taskManager.tasks.removeAtIndex(indexPath.row)
            myFeed.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskManager.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskManager.tasks[indexPath.row].taskName
        cell.detailTextLabel?.text = taskManager.tasks[indexPath.row].details
        
        return cell
    }


}

