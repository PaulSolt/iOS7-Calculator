//
//  DigitAccumulator.swift
//  RPN
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

public struct DigitAccumulator {
    public enum DigitAccumulatorError: Error {
        case extraDecimalPoint
        case invalidNumberValue
    }
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)  // 0 - 9
    }
    
    private var digits = [Digit]()
    
    // 24.8  [2, 4, ., 8]
    
    public init() {
        
    }
    
    public mutating func add(digit: Digit) throws {
        // TODO: Test both of these error conditions
        
        switch digit {
        case .decimalPoint:
            // add decimal
            print(".")
            
            if digits.contains(.decimalPoint) {
                throw DigitAccumulatorError.extraDecimalPoint
            }
            digits.append(digit)
        case .number(let value):
            // add the value to accumulator
            print(value)
            if value < 0 || value > 9 {
                throw DigitAccumulatorError.invalidNumberValue
            }
            digits.append(digit)
        }
    }
    
    public mutating func clear() {
        digits.removeAll()
    }
    
    public func value() -> Double? {
        // add everything up
        
        // 1 . 0  -> "1" "." "0" -> "1.0" -> 1.0
        let numberString = digits.map { (digit) -> String in
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let number):
                return String(number)
            }
        }.joined()
        
        return Double.init(numberString) // Double(numberString)
    }
}
