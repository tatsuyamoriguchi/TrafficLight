//
//  AccessData.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 7/2/22.
//

import Foundation
import UIKit


class AccessData {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func getAllItems() {
        do {
            let items = try context.fetch(TrafficLightHistory.fetchRequest())

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
