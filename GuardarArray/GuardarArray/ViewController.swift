//
//  ViewController.swift
//  GuardarArray
//
//  Created by MacBook on 01/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lista : [String] = []
    @IBOutlet weak var caja: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        lista = defaults.object(forKey: "lista") as? [String] ?? [String]()
    
        print(lista.count)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func guardar(_ sender: UIButton) {
    let defaults = UserDefaults.standard
        
        if let dato = caja.text{
            lista.append(dato)
            defaults.set(lista, forKey: "caja")
            
        }
    }
    
 


}

