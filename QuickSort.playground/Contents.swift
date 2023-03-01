import Foundation

// Sum of elements in an array using recursion

func sumOfElements(
  array: [Int],
  sum: Int = 0
) -> Int {
  guard !array.isEmpty else { return sum }
  
  let truncatedArray = Array(array.dropFirst())
  return sumOfElements(
    array: truncatedArray,
    sum: sum + array.first!
  )
}

// Count of elements in an array using recursion

func countOfElements(
  array: [Int],
  count: Int = 0
) -> Int {
  guard !array.isEmpty else { return count }
  
  return countOfElements(
    array: Array(array.dropFirst()),
    count: count + 1
  )
}

// Finding the maximum number in an array using recursion

func findMax(
  in array: [Int],
  max: Int = 0
) -> Int {
  guard !array.isEmpty else { return max }
  
  return findMax(
    in: Array(array.dropFirst()),
    max: max > array.first! ? max : array.first!
  )
}

// Binary search via recursion

func binarySearch<T: Comparable>(
  _ array: [T],
  for value: T,
  in range: Range<Array.Index>? = nil
) -> Array.Index? {
  let range = range ?? array.startIndex..<array.endIndex
  guard range.lowerBound < range.upperBound else { return nil }
  
  let size = array.distance(from: range.lowerBound, to: range.upperBound)
  let middle = array.index(range.lowerBound, offsetBy: size / 2)

  if array[middle] == value {
    return middle
  } else if array[middle] > value {
    return binarySearch(array, for: value, in: range.lowerBound..<middle)
  } else {
    return binarySearch(array, for: value, in: array.index(after: middle)..<range.upperBound)
  }
}

// Quick array sorting

func quicksort(array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }
  
  let pivot = array[array.count / 2]
  let less = array.filter { $0 < pivot }
  let equal = array.filter { $0 == pivot }
  let greater = array.filter { $0 > pivot }
  
  return quicksort(array: less) + equal + quicksort(array: greater)
}

sumOfElements(array: [3, 5, 8])
countOfElements(array: [3, 5, 8, 10, 12])
findMax(in: [42, 30, 35, 1, 99, 0])
let binarySearchArray = [2, 35, 50, 42, 30, 22]
binarySearch(binarySearchArray, for: 42)
quicksort(array: [10, 5, 2, 3, 4])
