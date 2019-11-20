import Foundation

// MARK: - Binary Search Algorithm

func binarySearch(list: [Int], item: Int) -> Int {
    
    // Set boundaries
    
    var low = 0
    var high = list.count - 1
    
    // Search item
    
    while low <= high { // Until this part is reduced to a single element
        let mid = (low + high) / 2  // Check the middle item
        let guess = list[mid]
        if guess == item { // The item is found
            return mid
        }
        if guess > item { // Too much
            high = mid - 1
        } else { // Too little
            low = mid + 1
        }
    }
    
    return 0
}

let myList = [1, 3, 5, 7, 9]

print(binarySearch(list: myList, item: 3))
print(binarySearch(list: myList, item: -1))
