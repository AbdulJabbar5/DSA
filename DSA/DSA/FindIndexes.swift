//
//  FindIndexes.swift
//  DSA
//
//  Created by a.sajjad.hussaini on 23/10/2021.
//

import Foundation

/*
 
 This playground is to solve indexes of sum of two numbers problem.
 
 Ex: - Here is few examples about this algorithm
    
        1. [8, 3, 6, 7, 9, 0] = 7 => [3, 5]
        2. [0, 2, 8, 5] = 10 => [1, 2]
 
 */

func findIndexesFrom(numbers: [Int], with: Int) -> [Int] {
    
    var indexes: [Int] = []
    
    // check numbers and targetted integer is not 0
    guard numbers.count > 0 && with > 0 else {
        return indexes
    }
    
    for firstIndex in 0...numbers.count - 1 {
        let firstElement = numbers[firstIndex]
        for secondIndex in 0...numbers.count - 1 {
            let secondElement = numbers[secondIndex]
            if with == firstElement + secondElement {
                indexes = [secondIndex, firstIndex]
            }
        }
    }
    
    return indexes
}

