import Foundation

func countdown(from number: Int) {
  // Base case
  guard number >= 0 else { return }
  print(number)
  // Recursion case
  countdown(from: number - 1)
}

func factorial(of number: Int) -> Int {
  if number == 1 {
    return 1
  } else {
    return number * factorial(of: number - 1)
  }
}

countdown(from: 5)
factorial(of: 3)
