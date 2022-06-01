import UIKit

func searchCountUsingIndexShifting(from input: String, searchParam: String) -> Int {
    
    guard !searchParam.isEmpty else {
        return 0
    }
    
    var mni = 0
    var matchCount = 0
    
    // node index is for  input index
    for inputChar in input {
        
        for nodeIndex in mni..<searchParam.count {
            
            let lookUpIndex = searchParam.index(searchParam.startIndex, offsetBy: nodeIndex)
            let charAtIndex = searchParam[lookUpIndex]
            if inputChar.lowercased() == charAtIndex.lowercased() {
                mni += 1
                if (searchParam.count) == mni {
                    matchCount += 1
                    mni = 0
                }
                break
            } else {
                mni = 0
            }
        }
    }
    return matchCount
}

let countReturned = searchCountUsingIndexShifting(from: "gudia guddi duggi", searchParam: " ")
print(countReturned)
