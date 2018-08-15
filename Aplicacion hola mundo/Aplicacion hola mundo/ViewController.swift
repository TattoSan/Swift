//
//  ViewController.swift
//  Aplicacion hola mundo
//
//  Created by MacBook on 15/08/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clicks = 0
    @IBAction func Botton1(_ sender: UIButton) {
        etiqueta.text = "Click \(clicks)"
        clicks += 1
        /*if(clicks%2==0)
        {
            
        }
        else
        {
            
        }*/
    }
  
    @IBOutlet weak var slider1: UISlider!
    
    @IBAction func Slider(_ sender: UISlider) {
        
    }
    print(slider.value)
    @IBOutlet weak var etiqueta: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        // Do any additional setup after loading the view, typically from a nib.
        etiqueta.text = "Hola"
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

