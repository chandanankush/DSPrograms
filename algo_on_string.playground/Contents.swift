import UIKit

//: search character/word from given paragraph

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

//let countReturned = searchCountUsingIndexShifting(from: "this is sample file", searchParam: " ")
//print(countReturned)


//: search max matched words in given 2 string
func findMaxMatchingString(from input1: String, and input2: String) -> String {
    
    guard !input1.isEmpty, !input2.isEmpty else {
        return ""
    }
    
    var maxMatchedWord = ""
    
    // node index is for  input index
    var tempMatchedString = ""
    var ni = 0
    for inputChar in input1 {
        
        for nodeIndex in ni..<input2.count {
            
            let lookUpIndex = input2.index(input2.startIndex, offsetBy: nodeIndex)
            let charAtIndex = input2[lookUpIndex]
            if inputChar.lowercased() == charAtIndex.lowercased() {
                tempMatchedString.append(charAtIndex)
                ni += 1
                break
            } else {
                if maxMatchedWord.count < tempMatchedString.count {
                    maxMatchedWord = tempMatchedString
                }
                ni = 0
                tempMatchedString = ""
            }
        }
    }
    return maxMatchedWord
}


let matchingString = findMaxMatchingString(from: "chandan chandan", and: "chandu chandan")
print("matched max length is: \(matchingString)")
