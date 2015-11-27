//
//  InterfaceController.swift
//  WatchTestApp WatchKit Extension
//
//  Created by Felix Olivares on 4/10/15.
//  Copyright (c) 2015 Felix Olivares. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var watchTimer: WKInterfaceTimer!
    
    var doneTimer: NSTimer?
    var duration: NSTimeInterval = 60.0 * 3.0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        println("\(self) init")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func startButtonPressed() {
        
        println("Start!")
        watchTimer.setDate(NSDate(timeIntervalSinceNow: duration))
        watchTimer.start()
        
        doneTimer = NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: Selector("timerDone:"), userInfo: nil, repeats: false)
        
        
    }
    
    func timerDone(timer: NSTimer){
        println("Done!")
    }
}
