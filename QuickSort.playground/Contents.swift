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

// TODO: - Find another algorithm

func binarySearch<T: Comparable>(
  array: [T],
  target: T,
  range: Range<Int> //= 0..<array.count
) -> Int? {
  guard range.startIndex < range.endIndex else { return nil }
  
  let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
  guard array[midIndex] != target else { return midIndex }
  
  let newRange = array[midIndex] > target ? range.startIndex..<midIndex
    : midIndex.advanced(by: 1)..<range.endIndex
  
  return binarySearch(array: array, target: target, range: newRange)
}

sumOfElements(array: [3, 5, 8])
countOfElements(array: [3, 5, 8, 10, 12])
findMax(in: [42, 30, 35, 1, 99, 0])
let binarySearchArray = [42, 35, 50, 42, 30, 22]
binarySearch(array: binarySearchArray, target: 42, range: 0..<binarySearchArray.count)
