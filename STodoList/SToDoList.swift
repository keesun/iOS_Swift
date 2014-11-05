//
//  SToDoList.swift
//  STodoList
//
//  Created by DoT on 2014. 11. 5..
//  Copyright (c) 2014년 DoT. All rights reserved.
//

import UIKit

class SToDoList: UITableViewController{
    
    var buttonAdd : UIButton!
    var theToDoTitles : NSMutableArray!
    var theToDoContents : NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonAdd = UIButton.buttonWithType(UIButtonType.ContactAdd) as? UIButton
        buttonAdd.frame = CGRectMake(0.0, 0.0, 40.0, 30.0)
        buttonAdd.addTarget(self, action: "AddTODO:", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: buttonAdd)
     //   self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }
    
    func AddTODO(sender:UIButton)
    {
        self.navigationController?.pushViewController(SInputTodo(), animated: true)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView)->Int{
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var CellIdentifier : NSString;()
        CellIdentifier = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as UITableViewCell
        if cell==0{
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: CellIdentifier)
        }
        cell.textLabel?.text = "\theToDoTitles.objectAtIndex(indexPath.row)"
        cell.detailTextLabel?.text = "\theToDoContents.objectAtIndex(indexPath.row"
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            theToDoTitles.removeObjectAtIndex(indexPath.row)
            theToDoContents.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        
    }
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
