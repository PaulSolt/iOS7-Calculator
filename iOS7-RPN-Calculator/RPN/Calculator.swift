//
//  Calculator.swift
//  RPN
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

public struct Calculator {
    
    // numbers in a stack
    private var stack: Stack<Double> = [0.0, 0.0]
    
    // operations
    public enum Operator {
        case add
        case subtract
        case multiply
        case divide
//        case percentage
    }
    
    public init() {
        
    }
    
    // add digit
    public mutating func push(number: Double) {
        stack.push(number)
    }
    
    // add operator
    public mutating func push(operator: Operator) {
        // pop 2 elements
        // process the operation on elements
        //  push the result on the stack
        
        let operand2 = stack.pop() ?? 0.0
        let operand1 = stack.pop() ?? 0.0
        
        var result: Double = 0.0
        
        switch `operator` {
        
        case .add:
            result = operand1 + operand2
        case .subtract:
            result = operand1 - operand2
        case .multiply:
            result = operand1 * operand2
        case .divide:
            result = operand1 / operand2
//        @unknown default:
//            print("Not supported")
        }
        stack.push(result)
    }
    
    //public func topValue() -> Double? {
    public var topValue: Double? {
        return stack.peek()
    }
    
    // clear
    public mutating func clear() {
        stack = [0.0, 0.0]
    }
    
    
}
