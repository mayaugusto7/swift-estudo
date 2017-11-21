//
//  ViewController.swift
//  Laboratorio_04
//
//  Created by MacBookPro on 21/11/17.
//  Copyright © 2017 MacBookPro. All rights reserved.
//

import UIKit

let pi: Double = 3.14

class ViewController: UIViewController {
    
    @IBOutlet weak var raioTextField: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    
    @IBAction func calcularArea(sender: AnyObject) {
     
        let raioStr = NSString(string: raioTextField.text!)
        
        let radiano = raioStr.doubleValue
        let area = pi * radiano * radiano
        
        areaLabel.text = String(format: "%.2f", area)
        
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

