import UIKit
//example on error handling
enum DivisionError: Error {

  case dividedByZero
}

// create a throwing function using throws keyword
func division(numerator: Float, denominator: Float) throws {

  // throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
      //let result: Float
      let result = Float(numerator / denominator)
    print(result)
  }
}

// call throwing function from do block
do {
  try division(numerator: 10, denominator:23)
  print("Valid Division")
}

// catch error if function throws an error
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}
