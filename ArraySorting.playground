import UIKit

import Foundation

func sortingArray(using inputArray: [Int]) -> [Int] {
    
    var unsortedArray = inputArray
    
    for i in 0..<unsortedArray.count {
        for j in 0..<unsortedArray.count{
            var temp = 0
            if unsortedArray[i] < unsortedArray[j] {
                temp = unsortedArray[i]
                unsortedArray[i] = unsortedArray[j]
                unsortedArray[j] = temp
            }
        }
    }
    return unsortedArray
}

let result = sortingArray(using: [5,9,2,6,3])
print(result)
