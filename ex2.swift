//
//  ex2.swift
//  
//
//  Created by Kevin DELANNOY on 25/01/15.
//
//

var sum = 0
var lastValue = 0
for (var i = 1; i < 4000000; i) {
  if i % 2 == 1 {
    sum += i
  }

  var tmp = i
  i += lastValue
  lastValue = tmp
}

println("The sum of even terms below 4000000 in Fibonacci sequence is \(sum)")
