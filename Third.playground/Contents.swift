extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"
let Kilometre = 1.km
print("One Kilometre is \(Kilometre) meters")
//example with combining
let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"

//random change
//another random change
let  areainsqm = 50.ft*50.ft
print("A 50ft by 50 plot is \(areainsqm)Square meters")

//generics
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}


//func swapTwoInts(_ a: inout Int, _ b: inout Int)
//func swapTwoValues<T>(_ a: inout T, _ b: inout T)

//example on generics
var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
// someInt is now 107, and anotherInt is now 3
//printing the same
print("\(someInt) and \(anotherInt)")

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
// someString is now "world", and anotherString is now "hello"
//printing the same
print("\(someString) and \(anotherString)")
