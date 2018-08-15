//
//  ViewController.swift
//  Proyecto1
//
//  Created by MacBook on 15/08/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pedrito: UIImageView!
    @IBAction func slidermoded(_ sender: UISlider) {
        var valor = slider.value
        if(valor<0.5)
        {
            pedrito.image = UIImage(named: "pedrito1")
        }
        else{
            pedrito.image = UIImage(named: "pedrito2")
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

