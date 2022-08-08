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
      let result: Float
      result = Float(numerator / denominator)
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
//inheritence
class Animal {

  // properties and method of the parent class
  var name: String = ""

  func eat() {
    print("I can eat")
  }
}

// inherit from Animal
class Dog: Animal {

  // new method in subclass
  func display() {

    // access name property of superclass
    print("My name is ", name);
  }
}

// create an object of the subclass
var labrador = Dog()

// access superclass property and method
labrador.name = "Moti"
labrador.eat()

// call subclass method
labrador.display()

//initializer and deinitializer
// declare a class
class  Car{
  var power_in_hp: Double
  var transmission : String

  // initializer to initialize property
  init() {
    power_in_hp = 326
    transmission = " Manual 6 Speed "
    print("Default car is Honda NSX.")
    print("Power (hp) = ", power_in_hp)
    print("Transmission : ",transmission)
  }
    
    deinit{
        print("garage empty, get a new car!")
    }
}

// create an object
var garage: Car? = Car()
garage = nil
