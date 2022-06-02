import UIKit

// removing duplicate from array

// aam jindagi :)
func removeDuplicate(from array: [Int]) -> [Int] {
    var buffer = [Int]()
    var added = Set<Int>()
    for elem in array {
        if !added.contains(elem) {
            buffer.append(elem)
            added.insert(elem)
        }
    }
    return buffer
}

let inputVals = [1, 4, 2, 2, 6, 24, 15, 2, 60, 15, 6]
print("input  \(inputVals)")

let uniqueVals = removeDuplicate(from: inputVals)

print("output \(uniqueVals)")


// mentos jindagi :)
let uniqueUnordered = Array(Set(inputVals))
print("mentos output \(uniqueUnordered)")
