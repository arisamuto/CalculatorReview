//
//  ViewController.swift
//  Calculator
//
//  Created by Arisa Muto on 2019/08/22.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var ope: Int = 0
    
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func select1 () {
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2 () {
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    
    @IBAction func select3 () {
        number1 = number1*10 + 3
        
        label.text = String(number1)
    }
    
    @IBAction func select4 () {
        number1 = number1*10 + 4
        
        label.text = String(number1)
    }
    
    @IBAction func select5 () {
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6 () {
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7 () {
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8 () {
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9 () {
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    @IBAction func select0 () {
        number1 = number1*10
        label.text = String(number1)
    }
    
    @IBAction func plus () {
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus () {
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func multiply () {
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func divide () {
        number2 = number1
        number1 = 0
        ope = 4
    }
    @IBAction func clear () {
        number1 = 0
        number2 = 0
        number3 = 0
        label.text = String(number1)
         self.imageView.image = UIImage(named: "haikei3")
    }
    @IBAction func equal () {
        if ope == 1 {
            number3 = number2 + number1
        } else if ope == 2 {
            number3 = number2 - number1
        } else if ope == 3 {
            number3 = number2 * number1
        } else if ope == 4 {
            number3 = number2 / number1
        }
        label.text = String(number3)
        if number3 >= 10 {
            self.imageView.image = UIImage(named: "haikei2")
        } 
    
}
}
