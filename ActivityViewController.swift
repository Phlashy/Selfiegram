//
//  ActivityViewController.swift
//  Selfiegram
//
//  Created by Gordon Casey on 9/5/16.
//  Copyright © 2016 Gordon Casey. All rights reserved.
//

import UIKit

class ActivityViewController: UITableViewController {
    
    var activities = [Activity]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.titleView = UIImageView(image: UIImage(named: "Selfigram-logo"))


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return activities.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath)
        
        // get the specific activity we should configure based on where we are (indexPath.row)
        let activity = activities[indexPath.row]
        
        // eventually add code here to set up the cell using the activity we just got from our array
        
        // get info on the liker and the userBeingLiked
        if let liker = activity.user.username,
            userBeingliked = activity.post.user.username {
            cell.textLabel?.text = "💗" + " \(liker) liked \(userBeingliked)'s photo"
        }
        
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if let query = Activity.query() {
            query.orderByDescending("createdAt")
            // we need to get the details inside user (like username). so we include it in this query
            query.includeKey("user")
            // ditto for post.user to get the username of the user that submitted the post.
            query.includeKey("post.user")
            query.findObjectsInBackgroundWithBlock({ (activities, error) -> Void in
                
                if let activities = activities as? [Activity]{
                    // update our array with new data from Parse
                    self.activities = activities
                    // reload the table view so new content shows
                    self.tableView.reloadData()
                }
                
            })
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
