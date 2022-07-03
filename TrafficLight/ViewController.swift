//
//  ViewController.swift
//  TrafficLight
//
//  Created by Tatsuya Moriguchi on 6/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var trafficLightImage: UIImageView!
    let imageList: [UIImage] =  [UIImage(named: "green.png")!, UIImage(named: "yellow.png")!, UIImage(named: "red.png")!]
    
   
    
    
    
    
//    var timer = Timer.scheduledTimer(timeInterval: 2.0,
//      target: self,
//      selector: #selector(animateFunction),
//      userInfo: nil,
//      repeats: true)
//
//    @objc func animateFunction(timer: Timer) {
//        self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")
//
//    }
    
    @IBAction func startPressedOn(_ sender: Any) {

        // use init() for properties
        var counter = 0
        let max = 4

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
            print("green light")
            print(Date())
        }
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
            print("yellow light")
            print(Date())
        }
        Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { timer in
            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
            print("red light")
            print(Date())
        }

        
        
        
//        let serialQueue = DispatchQueue.main
//        serialQueue.asyncAfter(deadline: .now()) {
//
//            UIView.animate(withDuration: 3, animations: {
//                self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")
//            }) { (completed) in
//                print("green light")
//            }
//
//            UIView.animate(withDuration: 2, animations: {
//                self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
//            }) { (completed) in
//                print("yellow light")
//            }
//        }
        
        
        
//        let serialQueue = DispatchQueue.main
//        serialQueue.asyncAfter(deadline: .now()) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")
//            print("green light")
//        }
//
//        serialQueue.asyncAfter(deadline: .now() + 5.0) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
//            print("yellow light")
//        }
//
//        serialQueue.asyncAfter(deadline: .now() + 7.0) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
//            print("red light")
//        }

//                Timer.scheduledTimer(withTimeInterval: self.interval + 5.0, repeats: false) { timer in
//                    self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
//                    print("yellow light")
//                }
//
//
//                Timer.scheduledTimer(withTimeInterval: self.interval + 7.0, repeats: false) { timer in
//                    self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
//                    print("red light")
//                }
//                self.interval += 12.0

            
    
        
        
        
        
        
//        let serialQueue = DispatchQueue.main
//        self.trafficLightImage.image = UIImage(named: "red.png")
//        print("red light")

//        UIView.transition(with: self.trafficLightImage, duration: 2.0, options: .curveEaseIn) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "red.png")
//        } completion: { (true) in
//            print("red light completed")
//        }
//
//        UIView.transition(with: self.trafficLightImage, duration: 4.0, options: .curveEaseIn) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "yellow.png")
//        } completion: { (true) in
//            print("yellow light completed")
//        }
//
//        UIView.transition(with: self.trafficLightImage, duration: 4.0, options: .curveEaseIn) {
//            self.trafficLightImage.image = UIImage(imageLiteralResourceName: "green.png")
//        } completion: { (true) in
//            print("green light completed")
//        }
//        counter reached to max.
//        red light completed
//        yellow light completed
//        green light completed

        
        
        
        
//            self.trafficLightImage.image = UIImage(named: "yellow.png")
//            print("yellow light")
//
//
//            self.trafficLightImage.image = UIImage(named: "green.png")
//            print("green light")
//

//        let serialQueue = DispatchQueue.main
//        serialQueue.sync {
//
//            self.trafficLightImage.image = UIImage(named: "red.png")
//            self.trafficLightImage.image = UIImage(named: "yellow.png")
//            self.trafficLightImage.image = UIImage(named: "green.png")
////            self.trafficLightImage.animationDuration = 3.0
////            self.trafficLightImage.animationRepeatCount = 3
////            self.trafficLightImage.startAnimating()
//            print("Displayed red light.")
//        }
//        serialQueue.sync {
////            self.trafficLightImage.image = UIImage(named: "yellow.png")
////            self.trafficLightImage.animationDuration = 3.0
////            self.trafficLightImage.animationRepeatCount = 3
////            self.trafficLightImage.startAnimating()
//            self.trafficLightImage.image = UIImage(named: "yellow.png")
//            print("Displayed yellow light.")
//        }
//        serialQueue.sync {
//            self.trafficLightImage.image = UIImage(named: "green.png")
//            print("Displayed green light.")
//        }

        
        
//        self.trafficLightImage.image = UIImage(named: "red.png")
//        self.trafficLightImage.image = UIImage(named: "yellow.png")
//        self.trafficLightImage.image = UIImage(named: "green.png")


        
        
        
        
        //        let animatedImage = UIImage.animatedImage(with: imageList, duration: 3)
//        trafficLightImage.image = animatedImage
        
                
//        let serialQueue = DispatchQueue.main
//
//        serialQueue.asyncAfter(deadline:  .now(), execute: {
//            self.trafficLightImage.image = UIImage(named: "red.png")
//            print("Finished to show red light.")
//            self.trafficLightImage.image = UIImage(named: "yellow.png")
//            print("Finished to show yellow light.")
//            self.trafficLightImage.image = UIImage(named: "green.png")
//            print("Finished to show green light.")
//
//        })

//        serialQueue.asyncAfter(deadline: .now() + 4.0, execute: {
//            self.trafficLightImage.image = UIImage(named: "yellow.png")
//            print("Finished to show yellow light.")
//        })
//
//        serialQueue.asyncAfter(deadline: .now() + 6.0, execute: {
//            self.trafficLightImage.image = UIImage(named: "green.png")
//            print("Finished to show green light.")
//        })

    }
}

