//
//  MyTableViewController.swift
//  tableViewInHandH
//
//  Created by Ovsyankinds on 25/07/2017.
//  Copyright © 2017 Ovsyankinds. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    
    var arrOne: Array = ["One", "Two", "Three", "Four", "Five"]
    var arrTwo: Array = ["Dima", "Sasha", "Artem", "Danila", "Sergey"]
    
    var selectItem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section{
            case 0:
                return self.arrOne.count
            
            case 1:
                return self.arrTwo.count
            
            default:
                return 1
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        
        //cell.textLabel?.text = "Section \(indexPath.section)"
        //cell.detailTextLabel?.text = "Row \(indexPath.row)"
        
        cell.detailTextLabel?.text = "Section \(indexPath.section)"
        
        switch indexPath.section{
            case 0:
                cell.textLabel?.text = self.arrOne[indexPath.row]
            case 1:
                cell.textLabel?.text = self.arrTwo[indexPath.row]
            default:
                cell.textLabel?.text = self.arrOne[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section{
        case 0:
            self.selectItem = self.arrOne[indexPath.row]
        case 1:
            self.selectItem = self.arrTwo[indexPath.row]
        default:
            self.selectItem = "Hz"
        }
        
        //self.selectItem = self.arrOne[indexPath.row]
        self.performSegue(withIdentifier: "tableView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a: ViewController = segue.destination as! ViewController
        
        a.labelVC = self.selectItem
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }*/
    

}
