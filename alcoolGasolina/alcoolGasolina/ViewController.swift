//
//  ViewController.swift
//  alcoolGasolina
//
//  Created by Paulo Calado on 16/04/18.
//  Copyright © 2018 Codgin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var gasField: UITextField!
    @IBOutlet weak var alcoolField: UITextField!
    
    @IBAction func calcularCombstivel(_ sender: Any) {
        
        if(self.validarCampos(precoAlcool: alcoolField.text!, precoGasolina: gasField.text!)){
            self.calcularMelhorPreco(precoAlcool: alcoolField.text!, precoGasolina: gasField.text!)
        }
            
        
    }
    
    func calcularMelhorPreco(precoAlcool:String, precoGasolina:String) {
        let valorAlcool:Double = Double(precoAlcool)!
        let valorGasolina:Double = Double(precoGasolina)!
        
        let result = valorAlcool/valorGasolina
        if(result >= 0.7){
            resultLabel.text = "Melhor utilizar GASOLINA!"
        }else {
            resultLabel.text = "Melhor utilizar ALCOOL!"
        }
        
    }
    
    func validarCampos(precoAlcool:String, precoGasolina:String) -> Bool {
        var camposValidados:Bool = true
        
        if (precoAlcool.isEmpty)||(precoGasolina.isEmpty){
            camposValidados = false
            resultLabel.text = "Preencha todos os campos"
        }
        
        return camposValidados
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

