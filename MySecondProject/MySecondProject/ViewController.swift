//
//  ViewController.swift
//  MySecondProject
//
//  Created by MBP Technopartner on 17/04/18.
//  Copyright © 2018 Calvin Krishna TPI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oldField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func btnClick(_ sender: Any) {
        if let age = oldField.text {
            if let Ages = Int(age) {
                let AgesinYears = Ages * 7
                label.text = "You are dog is " + String(AgesinYears) + " years old"
            }
            
            
        }
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

