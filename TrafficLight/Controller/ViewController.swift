//
//  ViewController.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 6/29/22.
//

import UIKit
import CoreData


class ViewController: UIViewController {
    
    // Properties
    let access = AccessData()
 
    weak var greenTimer: Timer? = nil
    weak var yellowTimer: Timer? = nil
    weak var redTimer: Timer? = nil
    
    @IBOutlet weak var trafficLightImage: UIImageView!
    
    
    @IBAction func stopPressedOn(_ sender: Any) {
        // Add code to delete and refresh previous timer processes
        greenTimer?.invalidate()
        greenTimer = nil
        yellowTimer?.invalidate()
        yellowTimer = nil
        redTimer?.invalidate()
        redTimer = nil
        print("stop button pressed")
        print(Date())

    }

    
    
    // Button to start/restart traffic light cycle
    @IBAction func startPressedOn(_ sender: Any) {

        print("start/restart button pressed")
        print(Date())
        
        // Add code to delete and refresh previous timer processes
        
        var counter = 0
        let max = 4

        access.createItem(event: "Start/Restart Pressed")

        // Continuously loop trafficLights() till the counter gets to max
        while true {

            
//            if counter == 0 {
//                self.trafficLights()
//            } else {
                // Schedule each function call ahead everytime it loops.
                // But why counter * 10 instead of counter * 11???
                // green: 5 seconds, yellow 2 seconds, red 4 seconds
                // One loop total time is 11 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(counter * 10)) {
                    self.trafficLights()
                     }
//            }
            
            counter += 1
            // break when the counter reaches to max
            // to avoid endless loop
            if counter == max {
                
                // Debugging purpose.
                print("counter reached to max.")
 
                break
            }

        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightImage.image = UIImage(named: "red.png")
        
    }
    
    
    
    
    func trafficLights() {

        self.greenTimer?.invalidate()
        self.greenTimer = nil
        self.yellowTimer?.invalidate()
        self.yellowTimer = nil
        self.redTimer?.invalidate()
        self.redTimer = nil

        greenTimer = Timer.scheduledTimer(withTimeInterval: 0, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")

            self.access.createItem(event: "Light Changed - Green")
            
            // Debugging purpose.
            print("green light")
            print(Date())
        }
        yellowTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
            
            self.access.createItem(event: "Light Changed - Yellow")
            // Debugging purpose.
            print("yellow light")
            print(Date())
        }
        redTimer = Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
            
            self.access.createItem(event: "Light Changed - Red")
            // Debugging purpose.
            print("red light")
            print(Date())
        }
        
    }
}

