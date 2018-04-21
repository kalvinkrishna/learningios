//
//  ViewController.swift
//  Menu Bars
//
//  Created by MBP Technopartner on 21/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: 1,
                             target: self,
                             selector: #selector(self.processTimer),
                             userInfo: nil,
                             repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
        
        // Dispose of any resources that can be recreated.
    }
    @objc func processTimer(){
        print("A Second has passed!")
    }

}

