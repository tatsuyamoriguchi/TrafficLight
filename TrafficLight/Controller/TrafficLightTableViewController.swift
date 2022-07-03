//
//  TrafficLightTableViewController.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 7/2/22.
//

import UIKit
import CoreData


class TrafficLightTableViewController: UITableViewController {
    
//    var models = [TrafficLightHistory]()   //[TrafficLightHistory]()
    
//    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//    func getAllItems() {
//        do {
//            models = try context.fetch(TrafficLightHistory.fetchRequest())
//            DispatchQueue.main.async {
//                TrafficLightTableViewController().tableView.reloadData()
//            }
//
//        } catch {
//            print(error)
//            
//        }
//    }
//    
//    
//    public func createItem(event: String) {
//        let newItem = TrafficLightHistory(context: context)
//        newItem.event = event
//        newItem.time = Date()
//        
//        do {
//            try context.save()
//        } catch {
//            print(error)
//        }
//        
//    }

    
    let access = AccessData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        access.getAllItems()
        
    }

    
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 10
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return access.models.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = access.models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.event
        
        var timeString: String = ""
        if model.time != nil {
            timeString = Helper().date2String(date: model.time!)
        } else {
            timeString = "No time data available"
        }
        cell.detailTextLabel?.text = timeString


        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
