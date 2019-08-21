//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda School. All rights reserved.

import UIKit
import RPN

class CalculatorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.maximumIntegerDigits = 20
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 20
        return formatter
    }()
    
    private var calculator = Calculator() {
        didSet {
            if let value = calculator.topValue {
                textField.text = numberFormatter.string(from: value as NSNumber)
            } else {
                textField.text = ""
            }
        }
    }
    
    private var digitAccumulator = DigitAccumulator() {
        didSet {
            if let value = digitAccumulator.value() {
                textField.text = numberFormatter.string(from: value as NSNumber)
            } else {
                textField.text = ""
            }
        }
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {

    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {

    }
    
    @IBAction func returnButtonTapped(_ sender: UIButton) {
        // Take the value from the accumulator and push it to the stack
        
    }
    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) {

    }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) {

    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {

    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // If you want to do something when the text field gets cleared, you can do so now.


        return true
    }
    
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        
    }
    
}
