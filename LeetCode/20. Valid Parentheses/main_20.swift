//
//  main.swift
//  LeetCode
//
//  Created by hiraoka on 2022/12/05.
//

import Foundation

func isValid(_ s: String) -> Bool {
    var brackets: [String] = []

    for char in s {
        switch char {
        case Character("("):
            brackets.append(")")
        case Character(")"):
            if brackets.last != ")" {
                return false
            }
            brackets = brackets.dropLast()

        case Character("{"):
            brackets.append("}")
        case Character("}"):
            if brackets.last != "}" {
                return false
            }
            brackets = brackets.dropLast()
        case Character("["):
            brackets.append("]")
        case Character("]"):
            if brackets.last != "]" {
                return false
            }
            brackets = brackets.dropLast()
        default:
            continue
        }
    }

    return brackets.count == 0
}


// !!! Wrong Answer !!!
//func isValid(_ s: String) -> Bool {
//    var bracketCounts: [String: Int] = [:]
//
//    for char in s {
//        switch char {
//        case Character("("):
//            bracketCounts["()", default: 0] += 1
//        case Character(")"):
//            bracketCounts["()", default: 0] -= 1
//            if  bracketCounts["()", default: 0] < 0 {
//                return false
//            }
//        case Character("{"):
//            bracketCounts["{}", default: 0] += 1
//        case Character("}"):
//            bracketCounts["{}", default: 0] -= 1
//            if  bracketCounts["{}", default: 0] < 0 {
//                return false
//            }
//        case Character("["):
//            bracketCounts["[]", default: 0] += 1
//        case Character("]"):
//            bracketCounts["[]", default: 0] -= 1
//            if  bracketCounts["[]", default: 0] < 0 {
//                return false
//            }
//        default:
//            assertionFailure()
//
//        }
//    }
//
//    return bracketCounts.values.allSatisfy { $0 == 0 }
//}
