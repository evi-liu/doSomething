//
//  FirstViewController.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var feed: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userManager.addUser("jane@jane.com", password: "password")
        userManager.addUser("bob@bob.com", password: "password")
        taskManager.addTask("Get laundry", amount: "$2.00", details: "From dryer 6", timeStamp: "Time")
        taskManager.addTask("Pickup gummies from Target", amount: "$4.00", details: "Sour gummy worms", timeStamp: "Time")
        taskManager.addTask("Ride to Event", amount: "$7.00", details: "Address of event", timeStamp: "Time")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        feed.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            taskManager.tasks.removeAtIndex(indexPath.row)
            feed.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskManager.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskManager.tasks[indexPath.row].taskName
        let detailTextLabel = taskManager.tasks[indexPath.row].amount + " | " + taskManager.tasks[indexPath.row].timeStamp
        cell.detailTextLabel?.text = detailTextLabel
        cell.detailTextLabel?.textColor = UIColor .grayColor()
        
        return cell
    }
}

