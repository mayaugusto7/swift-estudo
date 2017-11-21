//
//  ViewController.swift
//  Laboratorio_06
//
//  Created by MacBookPro on 21/11/17.
//  Copyright © 2017 MacBookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numeroTextField: UITextField!
    
    @IBAction func inververt(sender: AnyObject) {
        
        if !isValidar() {
            showMensagem(msg: "Erro, valor inválido!", status: false)
            return
        }
        
        let numero: Int! = Int(numeroTextField.text!)
        var numeroInvertido : Int = 0
        var numeroAux: Int = 0
        var resto: Int = 0
        
        numeroAux = numero
        
        while(numeroAux > 0) {
            resto = numeroAux % 10
            numeroAux = numeroAux / 10
            numeroInvertido = numeroInvertido  * 10 + resto
        }
        
        showMensagem(msg: "O número \(numeroInvertido) !", status: true)
    }
    
    func showMensagem(msg: String, status: Bool) {
        
        let janela = UIAlertController(title: "Mensagem", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        if (!status) {
            janela.view.tintColor = UIColor.red
        } else {
            janela.view.tintColor = UIColor.green
        }
        
        janela.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        present(janela, animated: true, completion: nil)
    }
    
    func isValidar() -> Bool {
        let sNumero : String? = numeroTextField.text
        
        if (sNumero!).characters.count >= 4 {
            return true
        } else {
            return false
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

