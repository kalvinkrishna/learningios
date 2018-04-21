//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by MBP Technopartner on 21/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellContent = ["Rob", "Kitten", "Tommy", "Rapline"]
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
        
    }

    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(indexPath.row + 1)
        
        return cell
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

