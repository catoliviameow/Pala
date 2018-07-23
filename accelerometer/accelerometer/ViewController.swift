//
//  ViewController.swift
//  accelerometer
//
//  Created by Evelyn Moore on 29/4/2018.
//  Copyright © 2018 Evelyn Moore. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        motionManager.accelerometerUpdateInterval = 0.2
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data,error)in if let myData = data
        {
            print(myData)
            
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

