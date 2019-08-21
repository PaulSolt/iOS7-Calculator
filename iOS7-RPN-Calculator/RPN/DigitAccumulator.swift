//
//  DigitAccumulator.swift
//  RPN
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

public struct DigitAccumulator {
    
    public enum Digit: Equatable {
        case decimalPoint
        case number(Int)  // 0 - 9
    }
    
    private var digits = [Digit]()
    
    // 24.8  [2, 4, ., 8]
    
    public init() {
        
    }
    
    public mutating func add(digit: Digit) {
        switch digit {
        case .decimalPoint:
            // add decimal
            print(".")
        case .number(let value):
            // add the value to accumulator
            print(value)
        }
    }
    
    public mutating func clear() {
        
    }
    
    public func value() -> Double? {
        // add everything up
        return nil
    }
}
