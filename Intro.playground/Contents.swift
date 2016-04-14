/*:
 # Intro to iOS with Swift
   by [@lifcio](https://twitter.com/lifcio), Dev Relations [@syncano](https://twitter.com/syncano)
 */

/*:
 ## 1) Using System and External Frameworks and Libraries
 
 "import library_or_framework_name"
 */
//standard system framework for UI elements, like buttons, labels, text fields etc.
import UIKit

/*:
 ## Variables and Constants
You can declare variables - their values can change - or constants - their values cannot be modified. 
For variables use “var” keyword and for constants “let” keyword.
 */
//var a = 2
//a = 3

//var b = 5
//b = a + 5

//let sum = a + b
//sum = 12

/*:
 ## Types and type inference
 
 Variables (and constants) in Swift can be of different types. To list a few:
 * Integer
 * Float
 * Double
 * String
 * Booleans
 * Array
 * Dictionary
 * Tuples
 * Optionals
 * Enum type
 * Class type 
 * (more about enums and classes laters)
 
 Types can be declared explicitly (using Type Annotations) or inferred from the value.
 */

/*:
 ### Integer
 */
//var c = 3 //inferred to be an Int
//var d : Int = 4 //explicit type
//let maxInt = Int.max
//let minInt = Int.min

/*:
 ### Double and Float
 */
//var e = 3.14
//is the same as
//var f : Double = 3.14 //type inference for floating point numbers assumes Double type

//to use float, declare it explicitly
//var g : Float = 3.14

/*:
 ### String
 */
//var text = "My name is Mariusz"
//var text2 = " and we append something here"
//let text3 = text + text2

/*:
 ### Booleans
*/
//let isMyNameMariusz = true
//let amIJavaScriptNinja = false

//if isMyNameMariusz {
//    print("Hello, I'm Mariusz")
//} else {
//    print("Hello, I have no idea what my name is :(")
//}

/*:
 ### Arrays
 */
//var names = ["Mary", "John", "Heather"]
//names += ["Kelly"]
//names.append("Sara")
//names.popLast()
//names
//let index = names.indexOf("John")
//names.removeAtIndex(index!)
//names
//
//for name in names {
//    print(name)
//}
//
//let newNames = names
//newNames += ["Another name"]

/*:
 ### Dictionary
 Key - Value pairs
 */
//var addressBook = ["Mariusz":"NY", "Todd":"TX"]
//addressBook["Sara"] = "PA"
//addressBook
//for (name, state) in addressBook {
//    print("\(name) lives in \(state)")
//}
//
//for name in addressBook.keys {
//    print(name)
//}
//
//for state in addressBook.values {
//    print(state)
//}

/*:
 ### Tuples
 
 Tuple groups multiple values into a single value. They can be of any type, and do not have to be the same.
 */
//let cityAndWeather = ("New York", "Sunny")
//let cityAndWeather2 = (city: "Warsaw", weather: "Rainy :(")
//
//cityAndWeather.0
//cityAndWeather.1
//
//cityAndWeather2.city
//cityAndWeather2.weather
//
//let (city, weather) = cityAndWeather
//city
//weather

/*:
 ### Optionals
 Use them to mark values that can exist or not - they will then contain `nil` value.
 */
//var aString
//var nilString : String?
//var nilValue = nil
//var nilString_2 : String? = nil
//
//if nilString != nil {
//    print(nilString)
//}
//
//if let aString = nilString {
//    print("Non nil string: \(aString)")
//}

/*:
 ### Enums
 */
//enum Animal {
//    case Dog
//    case Cat
//    case Elephant
//    case Lion
//}

//let myPet = .Elephant
//let myPet = Animal.Elephant
//let yourPet : Animal = .Dog

//switch (myPet) {
//case .Dog, .Cat:
//    print("You have a dog or a cat! Nice!")
//case .Elephant:
//    print("You have an elephant? That's... weird.")
//default:
//    print("You have a different pet. Also cool.")
//}

/*:
 You can also associate values with enum cases
 */
//enum Animal {
//    case Dog(String)
//    case Cat(String)
//    case Elephant(String)
//    case Lion(String)
//}
//let myPet = Animal.Dog("Dino")
//
//switch (myPet) {
//case .Dog("Dino"):
//    print("You have a dog - Dino!")
//case .Dog(let name):
//    print("You have a dog - not Dino, but \(name)!")
//default:
//    print("You don't have a dog")
//}

/*:
 ### Classes
 */
//enum Hobby {
//    case PlayingFootbal, Swimming, Programming
//}

//class Person {
//class Person : CustomStringConvertible {
//    var name: String = ""
//    var age: Int = 0
//    var hobby: Hobby?
//
//    init(name: String, age: Int, hobby: Hobby) {
//        self.name = name
//        self.age = age
//        self.hobby = hobby
//    }
//    
//    var description: String {
//        return "Person: \(self.name), \(self.age), \(self.hobby)"
//    }
//}

//let mariusz = Person()
//let mariusz = Person(name: "Mariusz", age: 28, hobby: .Programming)
//mariusz.name = "Mariusz"
//mariusz = Person()
/*:
 ### Type Safety
 
 Type is set once per object lifetime and cannot be changed. If variable is declared as Int, you cannot assign String value to it
 */
//var intValue = 21
//var textValue = "Text"
//intValue = 22
//intValue = textValue

/*:
 Sources:
 * [http://www.appcoda.com/swift-programming-language-intro/](http://www.appcoda.com/swift-programming-language-intro/)
 * [https://developer.apple.com/](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309)
 */

