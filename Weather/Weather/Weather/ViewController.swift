//
//  ViewController.swift
//  Weather
//
//  Created by MBP Technopartner on 22/04/18.
//  Copyright © 2018 TecnopartnerID. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.weather-forecast.com/locations/London/forecasts/latest")
        
        let request = NSMutableURLRequest(url: url!)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data,response, error in
            
            if let error = error {
                print(error)
            } else {
                if let unwrappedData = data {
                    let dataString  = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let stringSeparator = "<span class=\"phrase\">Light rain (total 8mm), mostly falling on Tue night. Warm (max 22&deg;C on Sun morning, min 10&deg;C on Sun night). Mainly fresh winds.</span>"
                    dataString?.components(separatedBy: stringSeparator)
                    
                    if let contentArray = dataString?.components(separatedBy: stringSeparator) {
                        print(dataString as Any)
                    }
                    
                }
            }
            
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

