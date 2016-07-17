//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ignacio Lasaosa Sáez on 17/7/16.
//  Copyright © 2016 Ignacio Lasaosa Sáez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0

    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        time += 1
        timerLabel.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
    }
    
    @IBAction func reset(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

