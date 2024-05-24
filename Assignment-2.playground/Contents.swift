/**
 1.Arrays
 2.Sets
 3.Dictionary
 4.Tuples and its different types and use
 5.Control Statements (if , if else, if else if else,switch, guard )
 6.Loops (for loop , while loop, repeat while)
 7.Functions and different  types of functions
 **/

//  1. Arrays
//Ordered -> index is their order
let numsArray:[Int] = [0,1,2,3,4,5,6,7,8,9]
print(numsArray[0])


//  2. Sets
// Unordered
let numsSet:Set<Int> = [0,1,2,3,4,5,7,8,9]
print(numsSet.contains(3))

//  3. Dictionary -> dependent on how you decide. You can order by key
let numsDict: [Int: Int] = [2:4, 6:8]
print(numsDict)

//  4. Tuples
let point: (Int, Int) = (2, 1)
print(point)

let origin: (x: Int, y: Int) = (0,0)
print("2DPoint: \(origin.x)\t\(origin.y)")

let ThreeDPoint: (x: Int, y: Int, z: Int) = (0,0,2)
print("3DPoint: \(ThreeDPoint.x)\t\(ThreeDPoint.y)\t\(ThreeDPoint.z)")

func computeNewPoint(x1: Int, y1: Int, x2: Int, y2: Int ) -> (x: Int, y: Int) {
    return (x1 + x2, y1 + y2)
}

print(computeNewPoint(x1: 1, y1: 3, x2: 3, y2: 2))

//  5. Controls
// IF LOOP
if(5 > 2){
    print("if")
}

// IF ELSE LOOP
if( 4 < 3){
    print("if")
}
else{
    print("else")
}

//IF ELSE IF ELSE
if(false){
    print("if")
}else if(false){print("else if")}
else{print("else")}

//SWITCH
var letter = "A"
switch letter {
case "A": print(letter)
default: print("Not A")
}


//GUARD
func canLegallyDrink(age:Int) -> String{
    guard age >= 21 else {return "cannot drink"}
    return "can drink"
}
print(canLegallyDrink(age: 21))

//6.LOOPS

//For In Loop
let array = [2,4,6,8,10]
for i in array {
    print("For Loop: \(i)")
}
//While Loop
var counter = 0
while(counter <= 10){
    print("Inside While Loop \(counter)")
    counter+=1
}
//Repeat While Loop
let i = 0
repeat{
    print("Inside Repeat-While Loop: \(i)")
}while(i != 0)


//7.FUNCTIONS

//Void Function
func hello() -> Void {
    print("hello")
}

hello()

//Functions without parameters
func helloWorld()->String{
    return "helloWorld"
}

//Functions with parameters
func hello(greeting:String) -> String {
    return greeting
}

//Functions with multiple parameters
func calculateVolumeofCube(length:Int, width: Int, height:Int) -> Int{
    return length * width * height
}

//Functions without argument labels
func printWithoutLabels(_ param1: String, _ param2:String){
    print(param1, param2)
}

//Functions with functions as arguments
func makeAnArry(capacity:Int, using creator: () -> Int )->[Int]{
    var numbers:[Int] = []
    for _ in 0..<capacity{
        var n = creator()
        numbers.append(n)
    }
    return numbers
}

func generateZeros() -> Int{
    return 0
}

print(makeAnArry(capacity: 10, using: generateZeros))

printWithoutLabels("no", "labels")

//Function with Variabl Parameters
func sumNum(_ nums: Int...) -> Int{
    var total = 0
    for n in nums {
        total += n
    }
    return total
}
print(sumNum(1,2,3,4,5,6))
