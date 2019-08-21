//
//  StackTests.swift
//  RPNTests
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import XCTest
//@testable // Making any internal modifier visible at the module level
import RPN


class StackTests: XCTestCase {

    func testStackPushAndPop() {
//        var stack = Stack<Int>()
        var stack: Stack<Int> = [1, 2, 3]
        
        XCTAssertEqual(3, stack.pop())
        
        stack.push(7)
        
        XCTAssertEqual(7, stack.pop())
        XCTAssertEqual(2, stack.pop())
        XCTAssertEqual(1, stack.pop())
        
        XCTAssertEqual(nil, stack.pop())
    }

}
