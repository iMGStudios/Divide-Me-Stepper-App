//
//  ViewController.swift
//  DivideMe
//
//  Created by Matthew Valentinetti on 9/24/18.
//  Copyright © 2018 Matthew Valentinetti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    
    @IBOutlet weak var number2Label: UILabel!
    
    @IBOutlet weak var answerLabel1: UILabel!
    
    @IBOutlet weak var answerLabel2: UILabel!
    
    @IBOutlet weak var number2Stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        number2Label.text = String(Int(sender.value))
    }
    
    
    
    @IBAction func divideNumbers(_ sender: UIButton) {
        let number1 = Int(number1TextField.text!)!
        let number2 = Int(number2Stepper.value)
        let answer = number1 / number2
        answerLabel1.text = "\(number1) ➗ \(number2) = \(answer)"
        
    }
  
    
    
    

}

