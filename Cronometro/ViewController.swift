//
//  ViewController.swift
//  Cronometro
//
//  Created by Iuri Menin on 01/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0;
    var timer = NSTimer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func play(sender: UIBarButtonItem) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increseTime), userInfo: nil, repeats: true)
    }
    
    func increseTime (){
    
        time += 1
        timerLabel.text = "\(time)"
    }
    
    @IBAction func pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: UIBarButtonItem) {
        timer.invalidate()
        time = 0
        timerLabel.text = "\(0)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

