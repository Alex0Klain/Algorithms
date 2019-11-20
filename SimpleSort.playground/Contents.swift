import Foundation

// MARK: - Simple Search Algorithm

func findSmallest(in array: [Int]) -> Int {
    var smallest = array[0] // To store the lowest value
    var smallestIndex = 0 // To store the index of the lowest value
    
    for item in 1..<array.count {
        if array[item] < smallest {
            smallest = array[item]
            smallestIndex = item
        }
    }
    
    return smallestIndex
}

func selectionSort(from array: [Int]) -> [Int] {
    var localArray = array
    var newArray = [Int]()
    for index in 0..<localArray.count {
        // Find the lowest value and append to the new array
        let smallest = findSmallest(in: localArray)
        newArray.append(localArray[smallest])
        localArray.remove(at: smallest)
    }
    return newArray
}

selectionSort(from: [5, 10, 2, 3, 11])
