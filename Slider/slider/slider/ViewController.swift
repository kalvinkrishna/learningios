//
//  ViewController.swift
//  slider
//
//  Created by MBP Technopartner on 21/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBAction func sliderChanged(_ sender: AnyObject) {
        
        print(sliderOutlet.value)
        
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

