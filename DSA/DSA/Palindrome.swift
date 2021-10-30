//
//  Palindrome.swift
//  DSA
//
//  Created by a.sajjad.hussaini on 30/10/2021.
//

import Foundation

/*
 
 This playground is to solve the inputted text is palindrome or not.
 
 Ex: - Here is few examples about this algorithm
    
        1. anna -> true
        2. abdul -> false
 
 */

func isPalindrome(withText: String) -> Bool {
    
    // check withText is empty or not
    guard withText != "" else {
        return false
    }
    
    // convert text into characters
    let characters = Array(withText)
    var currentIndex = 0
    
    while currentIndex < characters.count / 2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    return true
}
