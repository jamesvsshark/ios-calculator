//
//  ViewController.swift
//  Calculator
//
//  Created by james simoes on 8/7/15.
//  Copyright (c) 2015 James Simoes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
        println("digit = \(digit)")
    }
    
    @IBAction func operate(sender: UIButton) {
    
    }
    
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayedValue)
        println("\(operandStack)")
    }
    
    var displayedValue: Double{
        set{
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
    }

}

