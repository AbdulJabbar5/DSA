//
//  PowerOfInteger.swift
//  DSA
//
//  Created by a.sajjad.hussaini on 23/10/2021.
//

import Foundation

/*
 
 This playground is to solve power of integer problem. If power integer is 0 then return 1.
 
 Ex: - Here is few examples about this algorithm
    
        1. 8^2 = 64
        2. 2^3 = 8
        3. 5^0 = 1
        4. 1^0 = 1
        5. 9^0 = 1
 
 */

func powerOf(integer: Int, with: Int) -> Int {
    
    var result: Int = integer
    
    // check power integer is 0 or not
    guard with > 0 else {
        return 1
    }
    
    for index in 1...with {
        if result != integer * index {
            result = result * integer
        }
    }
    
    return result
}
