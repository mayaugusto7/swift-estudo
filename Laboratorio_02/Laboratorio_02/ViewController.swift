//
//  ViewController.swift
//  Laboratorio_02
//
//  Created by MacBookPro on 21/11/17.
//  Copyright © 2017 MacBookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showMensagem() {
        
        let janela = UIAlertController(title: "Mensagem", message: "Desenvolvedor Mobile", preferredStyle:
            UIAlertControllerStyle.alert)
        
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

