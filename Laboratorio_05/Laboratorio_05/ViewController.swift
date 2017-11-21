//
//  ViewController.swift
//  Laboratorio_05
//
//  Created by MacBookPro on 21/11/17.
//  Copyright © 2017 MacBookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alturaTextField: UITextField!
    @IBOutlet weak var baseMaiorTextField: UITextField!
    @IBOutlet weak var baseMenorTextField: UITextField!
    
    @IBAction func calcularArea(sender: AnyObject) {
        
        let h : Int! = Int(alturaTextField.text!)
        let B : Int! = Int(baseMaiorTextField.text!)
        let b : Int! = Int(baseMenorTextField.text!)
        
        let area: Int = (h * (b + B)) / 2
        
        showMensagem(area: area)
    }
    
    func showMensagem(area: Int) {
        
        let janela = UIAlertController(title: "Mensagem", message: "Área do trapézio é \(area).", preferredStyle: UIAlertControllerStyle.alert)
        
        
        janela.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(janela, animated: true, completion: nil)
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

