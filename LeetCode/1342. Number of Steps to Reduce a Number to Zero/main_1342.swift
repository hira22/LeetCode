//
//  main.swift
//  LeetCode
//
//  Created by hiraoka on 2022/10/18.
//

import Foundation



//func numberOfSteps(_ num: Int) -> Int {
//    var stepCount = 0
//    var number = num
//
//    while(number != 1) {
//        stepCount += 1
//        if number % 2 == 0 {
//            number = number / 2
//        } else {
//            number -= 1
//        }
//    }
//    return stepCount + 1
//}

func numberOfSteps(_ num: Int) -> Int {
    String(num, radix: 2).reduce(0) { $1 == "1" ? $0 + 2 : $0 + 1 } - 1
}
