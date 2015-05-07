//
//  ex5.swift
//
//
//  Created by Kevin DELANNOY on 31/01/15.
//
//

import Foundation

func isNumber(number: Int, divisibleByEachNumbersUntil maxDivisor: Int) -> Bool {
  for (var i = (maxDivisor / 2) + 1; i <= maxDivisor; i++) {
    if number % i != 0 {
      return false
    }
  }
  return true
}


let MaxDivisor = 20
let MinNumber = MaxDivisor * (MaxDivisor - 1)
for (var i = MinNumber; i < Int.max; i += 2) {
  if isNumber(i, divisibleByEachNumbersUntil: MaxDivisor) {
    println("\(i) is the smallest number that can be divided by each of the numbers from 1 to \(MaxDivisor) without any remainder")
    break
  }
}
