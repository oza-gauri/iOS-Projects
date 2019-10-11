//
//  ViewController.swift
//  ArithmeticOperations
//
//  Created by Aress Software Pvt Ltd on 27/07/19.
//  Copyright © 2019 Aress Software Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var additionResult: UILabel!
    @IBOutlet weak var subtractionResult: UILabel!
    @IBOutlet weak var multipicationResult: UILabel!
    @IBOutlet weak var divisionResult: UILabel!
    override func viewDidLoad() {
        textField1.delegate = self
        textField2.delegate = self
        super.viewDidLoad()
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let x = string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) {
            return true
        } else {
            return false
        }
    }
    @IBAction func toAdd(_ sender: Any) {
        let firstValue = Int(textField1.text!)
        let secondValue = Int(textField2.text!)
        let resultValue = Int(firstValue! + secondValue!)
        additionResult.text = "  Addition:  \(resultValue)"
    }
    
    @IBAction func toSubtract(_ sender: Any) {
        let firstValue = Int(textField1.text!)
        let secondValue = Int(textField2.text!)
        let resultValue = Int(firstValue! - secondValue!)
        subtractionResult.text = "  Subtraction:  \(resultValue)"
    }
    
    @IBAction func toMultiply(_ sender: Any) {
        let firstValue = Int(textField1.text!)
        let secondValue = Int(textField2.text!)
        let resultValue = Int(firstValue! * secondValue!)
        multipicationResult.text = "  Multiplication:  \(resultValue)"
    }
    
    @IBAction func toDivide(_ sender: Any) {
        let firstValue = Int(textField1.text!)
        let secondValue = Int(textField2.text!)
        let resultValue = Int(firstValue! / secondValue!)
        divisionResult.text = "  Division:  \(resultValue)"
    }
    
    @IBAction func clearButton(_ sender: Any) {
        textField1.text = ""
        textField2.text = ""
        
    }
}

