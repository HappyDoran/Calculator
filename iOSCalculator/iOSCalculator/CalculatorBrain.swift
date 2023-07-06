//
//  File.swift
//  iOSCalculator
//
//  Created by Seo on 2023/07/06.
//

import Foundation

class CalculatorBrain {
    
    private var accumulator = 0.0
    
    func setOperand(operand : Double){
        accumulator = operand
    }
    
    func performOperation(symbol : String){
        switch symbol{
            case "π" : accumulator = M_PI
            case "√" : accumulator = sqrt(accumulator)
        default : break
        }
    }
    
    var result : Double{
        get {
            return accumulator
        }
        
    }
}
