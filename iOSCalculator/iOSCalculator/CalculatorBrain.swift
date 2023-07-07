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
    
    var operations : Dictionary<String,Operation> = [
        "π" : Operation.Constant(M_PI),
        "e" : Operation.Constant(M_E),
        "√" : Operation.UnaryOperation(sqrt),
        "cos" : Operation.UnaryOperation(cos)
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol : String){
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let associatedConstantValue) : accumulator = associatedConstantValue
            case .UnaryOperation(let function) : accumulator = function(accumulator)
            case .BinaryOperation : break
            case .Equals : break
            }
        }
//        if let constant = operations[symbol]{
//            accumulator = constant
//        }
//        switch symbol{
//            case "π" : accumulator = M_PI
//            case "√" : accumulator = sqrt(accumulator)
//        default : break
//        }
    }
    
    var result : Double{
        get {
            return accumulator
        }
        
    }
}
