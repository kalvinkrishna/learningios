//
//  FirstViewController.swift
//  To Do List
//
//  Created by MBP Technopartner on 22/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!

    var items:NSMutableArray = []
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        var cellLabel = ""
        if let tempLabel = items[indexPath.row] as? String {
            cellLabel = tempLabel
        }
        
        cell.textLabel?.text = cellLabel
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)   
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempitems = itemsObject as? NSMutableArray{
            items = tempitems
        }
        table.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

