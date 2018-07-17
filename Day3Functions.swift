import Foundation 

print("Hello World")

func greet()
{
    print("Greetings..")
}
greet()

func greet(message: String){
    print("\(message)")
}
greet(message: "Good afternnoon")

func add(n1: Int,n2: Int)
{
    print("\(n1) + \(n2) = \(n1+n2)")
}
add(n1: 20, n2: 3)

// add(10,20)   Error
//add (n2:20,n1:3)  Error

func add(_ n1: Int,_ n2: Int) -> Int{
    return (n1+n2)
}
var sum = add(2, 3)
print("sum = \(sum)")

func sub(n1: Float,n2: Float) -> Float
{
    return (n1-n2)
}
print("Sub = \(sub(n1: 4.25 , n2: 2.15))")

func mul(n1: Int,n2: Int) -> Int{
    return (n1*n2)
}
print("Mul = \(mul(n1: 4 , n2: 5))")

func swap(j: Int, k: Int) -> (Int, Int) {
    //Cannot use because function arguments are let constant by default
    //var temp = j
    //j = k
    //k = temp
    return(k,j)
}

var (a,b) = swap(j:2, k:4)
print("a=\(a) b=\(b)")

func swap(j: inout Int, k: inout Int){
    let temp = j
    j = k
    k = temp
}
//(a,b) = swap(j:12, k:14)
//print("a=\(a) b=\(b)")

var n1=10,n2=2
swap(&n1, &n2)
print("n1=\(n1) n2=\(n2)")

func SI(amount: Double, years: Double = 2, rate: Double = 2.3) -> Double {
    return((amount * years * rate) / 100)
}
print("Deposite 1: \(SI(amount: 10000.23, years: 1, rate: 5.2))")

print("Deposite 2: \(SI(amount: 10000.23, years: 1))")

print("Deposite 3: \(SI(amount: 100.55, rate: 5.2))")

print("Deposite 4: \(SI(amount: 1, years: 1, rate: 1))")

print("Deposite 5: \(SI(amount: 10, years: 5))")

print("Deposite 6: \(SI(amount: 10, rate: 5.2))")

func wishes (wishList: String...){
    for eachWish in wishList{
        print("\(eachWish)")
    }
}
wishes(wishList: "Happy Brithday", "PARTY", "Patandara")
wishes(wishList: "Subhakanshalu", "vadaiya", "Janam diwar ni shubhkamnao")

func addArray(arrays: [Int]...) -> [Int] {
    let a = arrays.count
    print("a = \(a)")
    
    var array1 = arrays[0]
    var array2 = arrays[1]
    
    var sumArray = [Int]()
    if array1.count == array2.count {
        for itr in 0..<array1.count {
            sumArray.append(array1[itr] + array2[itr])
        }
        
    }
    return sumArray
}
var ar1 = [1,2,3,4,5]
var ar2 = [5,5,5,5,5]
var result = addArray(arrays: ar1, ar2)
print("Result : \(result)")

var someOperator : (Int, Int) -> Int = mul
print("Multiplication: \(someOperator(2,5))")

someOperator = add
print("Addition: \(someOperator(2,4))")

//someOperator = sub    Error bcoz it is defined in float

//function as a parameter
func mathOper(someFunc: (Int, Int) -> Int, n1: Int, n2: Int){
    print("Math operation : \(someFunc(n1,n2))")
}

mathOper (someFunc: mul, n1: 6, n2: 3)
mathOper (someFunc: add, n1: 6, n2: 3)

//Function as a return type
func increase(_ input: Int) -> Int {
    return (input - 1)
}

func decrease(_ input: Int) -> Int {
    return (input - 1)
}

func counting(flag: Bool) -> (Int) -> Int {
    return flag ? increase : decrease
}

var countFunc = counting(flag: true)
print("\(countFunc(3))")

countFunc = counting(flag: false)
print("\(countFunc(3))")





