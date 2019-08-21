//
//  CalculatorTests.swift
//  RPNTests
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import XCTest
import RPN // @testable

class CalculatorTests: XCTestCase {

    func testCalculatorAdd() {
        var calculator = Calculator()
//        Calculator.Operator.add
        
        calculator.push(number: 7)
        calculator.push(number: 3)
        calculator.push(operator: .add)
        
        XCTAssertEqual(10, calculator.topValue)
    }

    // TODO: Add tests for other operators
    
    func testClearResetsCalculatorToZero() {
        var calculator = Calculator()
        calculator.push(number: 7)
        calculator.push(number: 3)

        calculator.clear()
        
        XCTAssertEqual(0, calculator.topValue)
    }

}
