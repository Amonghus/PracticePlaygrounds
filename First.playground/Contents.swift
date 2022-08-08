
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
    
    func showstatus(){
        print("Status")
        print("Employee ID: \(empno)")
        print("Employee Name: \(name)")
    }
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
var employee3 = Employee()
employee3.name = "Jim Halpert"
employee3.empno = 1003
employee3.showstatus()

//flowcontrol
//if else
// check whether a number is positive, negative, or 0.

let number = 6

if (number > 0) {
    print("Number is positive.")
}

else if (number < 0) {
    print("Number is negative")
}

else {
    print("Number is 0.")
}

//switch
// program to find the day of the week

let dayOfWeek = 4

switch dayOfWeek {
  case 1:
    print("Sunday")
        
  case 2:
    print("Monday")
        
  case 3:
    print("Tuesday")
        
  case 4:
    print("Wednesday")
    fallthrough
        
  case 5:
    print("Thursday")
    fallthrough
  case 6:
    print("Friday")
        
  case 7:
    print("Saturday")
        
  default:
    print("Invalid day")
}
