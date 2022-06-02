import UIKit

//: missing number in array of 1-100

// method - 1
let arrA = [0,1,3,4,5]
let firstIndex = arrA.first ?? 0
let lastIndex = arrA.last ?? 0
let rslt = Array(firstIndex...lastIndex)
let missingNoArray = Array(Set(rslt).subtracting(Set(arrA))).sorted()


// method - 2
func findMissingNo(arrA: [Int]) -> [Int] {
    let firstIndex = arrA.first ?? 0
    let lastIndex = arrA.last ?? 0
    let rslt = Array(firstIndex...lastIndex)
    let missingNoArray = rslt.filter{ !arrA.contains($0)}
    return missingNoArray
}
let numberArray = [11,12,14,15,18]
let missing1 = findMissingNo(arrA: numberArray)
print("Missing1: \(missing1)")

// method - 3
func findMissingNo2(arrA: [Int]) -> [Int] {
    var missingNumbers: [Int] = []
    guard arrA.count > 2 else { return missingNumbers }
    for i in 0...arrA.count-2 {
        var current = arrA[i]
        let next = arrA[i+1]
        if next != current + 1 {
            current += 1
            while current != next {
                missingNumbers.append(current)
                current += 1
            }
        }
    }
    return missingNumbers
}


let missing2 = findMissingNo2(arrA: numberArray)
print("Missing1: \(missing2)")
