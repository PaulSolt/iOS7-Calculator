//
//  Stack.swift
//  RPN
//
//  Created by Paul Solt on 8/21/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

var array: Array<Int> = [3, 4, 5]   // array literal syntax
//var array: [Int] = [3, 4, 5]

public struct Stack<Element>: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Element
    
// Access Modifiers
//    internal (default)
//    private
//    fileprivate
//    public
//    open
    
    // Instance variables
    private var items: [Element]
    
    public init(arrayLiteral elements: Element...) {
        items = elements
    }
    
    // push
    // pop
    // peek
    // isEmpty
    
    public mutating func push(_ value: Element) {
        items.append(value)
    }
    
    public mutating func pop() -> Element? {
        return items.popLast()
    }
    
    public func peek() -> Element? {
        return items.last
    }
}
