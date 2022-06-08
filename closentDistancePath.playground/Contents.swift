//: Playground - noun: a place where people can play

import UIKit

func arrayFindIndexGap(inputArr: [String], testParam: [String]) {
    
    var firstDataOccurence = [Int]()
    var lastDataOccurence = [Int]()
    
    for (objectIndex, Object) in inputArr.enumerated() {
        
        if Object == testParam[0] {
            firstDataOccurence.append(objectIndex)
        }
        if Object == testParam[1] {
            lastDataOccurence.append(objectIndex)
        }
    }
    
    var shortest: Int = -1
    var distanceAux: Int
    
    for i in 0..<firstDataOccurence.count {
        for j in 0..<lastDataOccurence.count {
            distanceAux = abs(firstDataOccurence[i] - lastDataOccurence[j])
            if shortest == -1 || distanceAux < shortest {
                shortest = distanceAux
            }
        }
    }
    print(shortest)
}


arrayFindIndexGap(inputArr: ["d", "b", "a", "b", "a", "b", "a", "b", "a", "z"], testParam: ["z", "d"])
