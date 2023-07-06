//
//  ViewController.swift
//  iOSCalculator
//
//  Created by Seo on 2023/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
            
        }
        else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    var displayValue : Double {
        get {
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        if let mathmaticalSymbol = sender.currentTitle {
            if mathmaticalSymbol == "π" {
                displayValue = M_PI
            }
            else if mathmaticalSymbol == "√" {
                displayValue = sqrt(displayValue)
            }
        }
    }
     
}

