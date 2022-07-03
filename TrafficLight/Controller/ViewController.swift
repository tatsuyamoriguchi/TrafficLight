//
//  ViewController.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 6/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var trafficLightImage: UIImageView!
    
    @IBAction func startPressedOn(_ sender: Any) {

        // Add code to delete and refresh previous timer processes

        
        // use init() for properties
        var counter = 0
        let max = 4

        AccessData().createItem(event: "Start/Restart Pressed")

        // Continuously loop trafficLights() till the counter gets to max
        while true {
            
            if counter == 0 { self.trafficLights() } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(counter * 10)) {
                    self.trafficLights()
                     }
            }
            
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

        Timer.scheduledTimer(withTimeInterval: 0, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")

            AccessData().createItem(event: "Light Changed - Green")
            // Debugging purpose.
            print("green light")
            print(Date())
        }
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
            
            AccessData().createItem(event: "Light Changed - Yellow")
            // Debugging purpose.
            print("yellow light")
            print(Date())
        }
        Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
            
            AccessData().createItem(event: "Light Changed - Red")
            // Debugging purpose.
            print("red light")
            print(Date())
        }
        
    }
}

