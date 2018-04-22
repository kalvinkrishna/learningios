//
//  SecondViewController.swift
//  To Do List
//
//  Created by MBP Technopartner on 22/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    @IBAction func AddButton(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempitems = itemsObject as? [String]{
            items = tempitems
            items.append(itemTextField.text!)
        } else{
            
            items = [itemTextField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

