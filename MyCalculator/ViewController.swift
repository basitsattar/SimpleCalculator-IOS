//
//  ViewController.swift
//  MyCalculator
//
//  Created by Abdul Basit on 11/24/16.
//  Copyright © 2016 HashLogics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var answerField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addPressed(_ sender: Any) {
        let firstNumber = firstNumberField.text!
        let secondNumber = secondNumberField.text!
        let answer = Int(firstNumber)! + Int(secondNumber)!
        answerField.text = String(answer)
    }
    @IBAction func subtractPressed(_ sender: Any) {
        let firstNumber = firstNumberField.text!
        let secondNumber = secondNumberField.text!
        let answer = Int(firstNumber)! - Int(secondNumber)!
        answerField.text = String(answer)
    }

    @IBAction func multiplyPressed(_ sender: Any) {
        let firstNumber = firstNumberField.text!
        let secondNumber = secondNumberField.text!
        let answer = Int(firstNumber)! * Int(secondNumber)!
        answerField.text = String(answer)
    }
    @IBAction func dividePressed(_ sender: Any) {
        let firstNumber = firstNumberField.text!
        let secondNumber = secondNumberField.text!
        
        let number = Int(secondNumber)
        if number != 0 {
            let answer = Int(firstNumber)! / Int(number!)
            answerField.text = String(answer)
        }else{
            answerField.text = "Invalid"
        }
    }
}

