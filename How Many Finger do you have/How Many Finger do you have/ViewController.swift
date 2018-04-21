//
//  ViewController.swift
//  How Many Finger do you have
//
//  Created by MBP Technopartner on 18/04/18.
//  Copyright © 2018 Calvin Krishna TPI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var fingerField: UITextField!
    @IBAction func actionButton(_ sender: Any){
        let randominput = String(arc4random_uniform(6))
      
        if fingerField.text == randominput {
            resultText.text = "You Are Right"
        }
        else {
            resultText.text = "Wrong! It was a "+ randominput + "."
        }
        
    }
    @IBOutlet weak var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

