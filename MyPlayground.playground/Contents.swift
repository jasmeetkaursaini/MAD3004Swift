//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var coordinates = (102,190)  //Tuple pattern

switch coordinates {
case (0,0):
    print("Start of canvas")
case (100,100):
    print("End of canvas")
case (10,_):          // _ representation could be replaced with any value in the Tuple
    print("x axis only")
case (_,20):
    print("y axis only")
case (10,20):
    print("Center of canvas")
case (101...200,101...200):
    print("Outside the canvas")
default:
    print("Canvas unavailable")
}

//Program
var range = 1...100
print(range)
print(range.contains(45))
print(range.contains(435))
print("Lowerbound",range.lowerBound)
print("Upperbound ",range.upperBound)

//Program for "for" loop and array
for itr in 0..<5{
    print("itr : \(itr)")
}

var friends = ["Jasmeet","Foram","Rutvi","Parveen","Aman"]
var length = friends.count

for itr in 0..<length {
    print ("Friends:\(itr)")
}


for frnd in friends[1...]{
    print("====\(frnd)")
}

for frnd in friends[...2]{
    print("@@@\(frnd)")
}

for char in "Good😒"{
    print("Charecter : \(char)")
}

var govinda = """
Answer to yesterday's question
What could you have been instead of a teacher?
Do you know about the answer
Response: I don't know.
"""

govinda += "I would be an Astronaut"
govinda.append("Ohh really! 😩")
print(govinda)

var day = "Saturday"
print("StartIndex : \(day[day.startIndex])")  //Return index charecter
print("LastIndex : \(day[day.index(before:day.endIndex)])") //To represent the last charecter in index
print("SecondIndex : \(day[day.index(after:day.startIndex)])")
print("4th Index : \(day[day.index(day.startIndex,offsetBy:3)])")
print("3th last Index : \(day[day.index(day.endIndex,offsetBy: -3)])")

//var day = "Saturday"
//Saturday_     so it is not used
//print("startIndex : \(day[day.endIndex])")
//EndIndex is always printed at the special cherector at the end of the string

var value = String()
value = "Too much"

if value.isEmpty{
    print("Value noy available")
}else{
    print(value)
}

var index = day.index(of : "t") ?? day.startIndex //lable is t and compulsary with index
print("Char t: \(day[index])")


for idx in day.indices{
    print("\(day[idx])") //Gives all the indices if the string. Will get index value
}
for idx in day.indices{
    print("\(day[idx])",terminator: "_") //Uses _ as a seperator
}
print()  //Generally for the new line charecter
print("Test")

for (idx,char) in day.enumerated() {
    print("Index :\(idx) Char : \(char)")
}

print(day.uppercased())
print(day.lowercased())

day.insert("!",at: day.endIndex)
print(day)

day.insert(contentsOf: " No class please", at: day.endIndex)
print(day)

var idx1 =  day.index(of: "!") ?? day.endIndex
day.remove(at:idx1)
print(day)

idx1 = day.index(of: "N") ?? day.endIndex
var idx2 = day.index(of: "s") ?? day.endIndex //Perticular charecter in a string
day.removeSubrange(idx1...idx2)
print(day)

day.removeAll()
print("Day :",day)



















