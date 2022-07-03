//
//  AccessData.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 7/2/22.
//

import Foundation
import UIKit
import CoreData


class AccessData {
    
    var models = [TrafficLightHistory]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func getAllItems() {
        do {
            models = try context.fetch(TrafficLightHistory.fetchRequest())
            DispatchQueue.main.async {
                TrafficLightTableViewController().tableView.reloadData()
            }

        } catch {
            print(error)
            
        }
    }
    
    
    func createItem(event: String) {
        let newItem = TrafficLightHistory(context: context)
        newItem.event = event
        newItem.time = Date()
        
        do {
            try context.save()
        } catch {
            print(error)
        }
        
    }
}
