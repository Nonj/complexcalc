//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // Add with two integers
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    // Add with Integer Arrays
    public func add(_ args : [Int]) -> Int {
        var sum : Int = 0
        for i in args {
            sum += i
        }
        return sum
    }
    
    // Add function with tuples
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // Add function with maps
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    // Subtract with two integers
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    // Subtract function with tuples
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    // Subtract function with maps
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }

    
    // Multiply two numbers
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    // Multiply array
    public func multiply(_ args: [Int]) -> Int {
        if args.count == 0 { return 0 }
        
        var sum : Int = 1
        
        for i in args{
            sum *= i
        }
        return sum
    }
    
    // Divide with two numbers
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    // Function with a function passed in
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    // Math op with array
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum: Int = beg
        
        for i in args{
            sum = op(sum, i)
        }
        return sum
    }
    
    // Count Function
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    // Average Function
    public func avg(_ args: [Int]) -> Int {
        var sum : Int = 0
        
        for i in args {
            sum += i
        }
        return sum / args.count
    }
}
