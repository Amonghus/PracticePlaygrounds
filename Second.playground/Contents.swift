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

//end of initialiser and deinit
//subscripts
class daysofaweek {
 var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
      "Thursday", "Friday", "saturday"]
   subscript(index: Int) -> String {
      get {
         return days[index]
      }
      set(newValue) {
         self.days[index] = newValue
      }
   }
}
var p = daysofaweek()

print(p[0])
print(p[1])
print(p[2])
print(p[3])

//optional chaining
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}
let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Prints "Unable to retrieve the number of rooms"

//nested types
class Employee {

var dept = Department()

class Department{

var EmpId = 150;

var EmpName = "Suresh Dasari";

func GetDetails() -> String {

return "Id: \(self.EmpId), Name: \(self.EmpName)"

}

}

}

var emp = Employee()

print(emp.dept.GetDetails())


//type casting
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
// two subclasses movie and song
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name) //important
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
// the type of "library" is inferred to be [MediaItem]
var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")
// Prints "Media library contains 2 movies and 3 songs"
