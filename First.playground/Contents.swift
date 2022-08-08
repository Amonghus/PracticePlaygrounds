
func greet(name:String) {
print("Hello \(name)" )

}

greet(name:"amogh")

// closure, In Swift, a closure is a special type of function without the function name

var info = {(age:Int,Post:String) in
   print("Your age is \(age) and your post is \(Post)")
}

info( 22,"iOS dev")

print(info(34,"team lead"))

//enumeration
enum devs{
    case ios, android, web, crossplatform, backend
}
var checkdev = devs.ios
print ("selected dev works in \(checkdev)")

var otherdev : devs
otherdev = devs.crossplatform
print("selected dev works in \(otherdev)")

//class
// define a class
class Employee {

// employee number
var empno = 0
// employee name
var name = " "
}

// create two objects of the Employee class
var employee1 = Employee()
var employee2 = Employee()

// access property using employee1
employee1.empno = 1001
employee1.name = "Amogh Raut"
print("Employee ID: \(employee1.empno)")
print("Employee Name: \(employee1.name)")
// access properties using employee2
employee2.empno = 1002
employee2.name = "Firstname Lastname"
print("Employee ID: \(employee2.empno)")
print("Employee Name: \(employee2.name)")
