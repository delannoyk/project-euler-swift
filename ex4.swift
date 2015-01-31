//
//  ex4.swift
//  
//
//  Created by Kevin DELANNOY on 31/01/15.
//
//

import Foundation

func isPalindrome(number: Int) -> Bool {
  var str = NSString(format: "%ld", number)
  var cstr = str.cStringUsingEncoding(NSASCIIStringEncoding)

  var length = str.length
  var halfLength = length / 2
  for (var i = 0; i < halfLength; i++) {
    var c1 = cstr[i]
    var c2 = cstr[length - i - 1]

    if c1 != c2 {
      return false
    }
  }
  return true
}

var factor1 = 0
var factor2 = 0
var product = 0

for (var i = 999; i > 100; i--) {
  for (var j = i; j > 100; j--) {
    var value = i * j
    if isPalindrome(value) {
      if value > product {
        factor1 = i
        factor2 = j
        product = value
      }
    }
  }
}

println("The largest palindrome made from the product of two 3-digit numbers is \(product) = \(factor1) x \(factor2)")
