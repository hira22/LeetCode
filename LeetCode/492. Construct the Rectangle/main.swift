//
//  main.swift
//  LeetCode
//
//  Created by hiraoka on 2022/12/05.
//

import Foundation

func constructRectangle(_ area: Int) -> [Int] {
    var w = Int(floor(sqrt(Double(area))))

    while(area % w != 0 ) { w -= 1 }
    return [ area / w , w ]
}

print(constructRectangle(122122))

    [].enumerated()
