//
//  main.swift
//  LeetCode
//
//  Created by hiraoka on 2022/10/18.
//

import Foundation


func fizzBuzz(_ n: Int) -> [String] {
    (1...n).map { number in
        switch number {
        case _ where number % 3 == 0 && number % 5 == 0:
            return "FizzBuzz"
        case _ where number % 3 == 0:
            return "Fizz"
        case _ where number % 5 == 0:
            return "Buzz"
        default:
            return number.description
        }

    }
}



