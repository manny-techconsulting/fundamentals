import UIKit
/**
 ASSIGNMENT 1
 ----------------------------------------------
 Create new playground taking any Example of your choice, so as to display the use of
 Below in Swift
 1.Constants
 2.Variables
 3.Type Inference
 4.Type Safety
 5.OOP principle
 6. Explain OOP different pillars with example

 Prepare Theoretical part for above topics as well, I will be asking questions on above topics and everyone should be able to answer those.
 Everyone needs to present these solutions tomorrow in classroom
 **/

// 1.Constants
/**
 The let keyword is used to declared an immutable variable.
 Immutable variables cannot have their values changed.
 If you try to change its value, the compiler will throw an error.
 */
let constant:String = "immutable"
//constant = "mutable"
print(constant)

// 2. Variables
/**
 The var keyword is used to declare a  mutable variable.
 Mutable variables can have their values changed either by value or by reference.
 */
var v1 = "changeMe"
print(v1)
var v2 = "changed"
v1 = v2
print(v1)
v1 = "changedAgain"
print(v1)

// 3. Type Inference
/**
 Swift is a statically typed language.
 Therefore it needs to know the type of the variable at compile time.
 If the type is not explicitally stated, Swift will infer the type based on the valued assigned.
 However, Swift will adhere to default types for certain values.
 */

//Let's say we want to infer the float type and print out the value.
var floatNumber  = 40.02
/**
We get the following error:
Cast from 'Double' to unrelated type 'Float' always fails.
This means that the infered type was Double not Float.
Therefore, it is sometimes best to explicity state the type we want.
**/
print(floatNumber is Float )

// 4. Type Safety
/**
 Swift is a type safe language.
 It makes sure the type you want is the type you get.
 Type safety works with expclity or inferred types.
 */

var safetyExample:String = "safe"
safetyExample = 1

/**
 The above code causes an error because the variable "safetyExample" is expecting a String type.
 However, if we try to redefine it to the value of 1, the compiler throws an error because an there is a type mismatch.
 */

// 5. OOP Principle
/**
 1. Encapsulation
    It's bundling properties and functions into a singular entity like a class. Within the bundle, access of its properties and functions are controlled.
 2. Abstraction
    It's the hiding of complex interactions of objects and only revealing the essential features of an object.
 3. Polymorphism
    Polymorphism is the ability for an object to take on multiple behaviors. Usually this is done through overloading or overriding functions.
    Overloading is creating two or more functions with the same name but different parameters and return types.
    Overriding is changing the behavior of an inherited function.
 4. Inheritance
    Inhertiance implies there is a parent class and child class.
    The child class gets the same properties and methods as the parent class without affecting the parent.
    The child can override the behavior of the inherited functions if needed or allowed.
 */

// 6. OOP Principles with Examples
/**
 1. Encapsulation
    Think of your generic employee. What might an Employee have: a name, social security number, phone number, and other personal identifibale information.
    If we think in OOP terms, we can bundle all this information into a singular class called Employee.
 2. Abstraction
    Buidling on the Employee class, let's say we are an adminstrator for a employee management software.
    We want to add an employee to our payroll using our software.
    With abstraction, we do not have to worry about how the software interacts with the Employee class.
    All the behvaior between user and software is hidden from us.
 3. Polymorphism
    Now let's continue with the employee example.
    Let's say we have a company of 100 employees.
    Everyone is an employee but some employees can have different positions.
    Some employees may work on payroll.
    Some may be your boss.
    Some may be the bosses' boss.
    But as you can see, an employee can be multuple things.
 4.Inheritance
    Building off the Employee example, let's say we have an employee that will be promoted to a new position, lets say admin.
    They will inherit the responsibilties and title of admin.
 */
