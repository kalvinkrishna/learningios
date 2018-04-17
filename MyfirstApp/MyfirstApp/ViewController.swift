//
//  ViewController.swift
//  MyfirstApp
//
//  Created by MBP Technopartner on 17/04/18.
//  Copyright © 2018 Calvin Krishna TPI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var labelAlert: UILabel!
    
    @IBAction func btnLogin(_ sender: Any) {
        labelAlert.text = "Welcome You Just Click The Button!"
        if emailTextField.text != "" {
            labelAlert.text = "Hello " + emailTextField.text!
        }
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello Kalvin")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

