//
//  ex3.swift
//  
//
//  Created by Kevin DELANNOY on 25/01/15.
//
//

import Darwin

func isPrime(number: Int) -> Bool {
  if number <= 3 {
    return number > 1
  }
  if number % 2 == 0 || number % 3 == 0 {
    return false
  }

  var nsqrt = Int(sqrt(Double(number)))
  for (var i = 5; i < nsqrt; i+=6) {
    if number % i == 0 || number % (i + 2) == 0 {
      return false
    }
  }
  return true
}

var number = 600851475143
var nsqrt = Int(sqrt(Double(number)))
var primeNumber = 0
for (var i = nsqrt; i >= 2; i--) {
  if number % i == 0 {
    if isPrime(i) {
      primeNumber = i
      break
    }
  }
}

println("The largest prime factor of the number 600851475143 is: \(primeNumber)") 
