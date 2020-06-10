//
//  ViewController.swift
//  eggtimer
//
//  Created by Vyom Unadkat on 13/08/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = Timer()
    
    var i : Int = 240
    
    @IBOutlet weak var output: UILabel!
    @objc func timercount()
    {
        if(i >= 0)
        {
            output.text = String (i)
            i = i - 1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timercount), userInfo: nil, repeats: true)
    }
    

    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }

    @IBAction func plusTen(_ sender: Any) {
        
        i = i + 10
        
        output.text = String(i)
    }
    @IBAction func minusTen(_ sender: Any) {
        if ( i > 10)
        {
        i = i - 10
        
        output.text = String(i)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        i = 240
        output.text = String(i)
    }
}

