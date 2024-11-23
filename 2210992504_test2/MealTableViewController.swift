//
//  MealTableViewController.swift
//  2210992504_test2
//
//  Created by Vanshika on 23/11/24.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        navigationItem.title = "Recipe Smart Manager"
        navigationItem.leftBarButtonItem = editButtonItem
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBSegueAction func AddEditSegue(_ coder: NSCoder, sender: Any?) -> UITableViewController? {
        
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            return AddEditTableViewController(coder: coder, meal:meals[indexPath.row])
        }
        
        return AddEditTableViewController(coder: coder, meal: nil)
    }
    
    @IBAction func unwindToMealTableViewController(segue: UIStoryboardSegue) {
        if segue.identifier == "cancelSegue" {
            return
        }
        
        if let source = segue.source as? AddEditTableViewController,
           let meal = source.meal {
            print(meal)
            if let indexPath = tableView.indexPathForSelectedRow {
               // meals[indexPath.row] = source.meal!
                //                tableView.reloadData()
                tableView.reloadRows(at: [indexPath], with: .none)
            } else {
               // meals.append(source.meal!)
                let indexPath = IndexPath(row: meals.count - 1, section: 0)
                tableView.insertRows(at: [indexPath], with: .none)
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let foodItem = meal.food[indexPath.row]
        
        // Configure the cell's content
        var content = cell.defaultContentConfiguration()
        content.text = foodItem.name
        content.secondaryText = foodItem.ingredients
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("\(meals[indexPath.row].name) - \(meals[indexPath.row].ingredients)")
        }
        
        
        
        /*
         // Override to support conditional editing of the table view.
         override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
         }
         */
        
        
        // Override to support editing the table view.
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                // Delete the row from the data source
                
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
        
        
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
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
