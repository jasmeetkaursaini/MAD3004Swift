import Foundation 

var snackItems = [String]()
var items = ["Potato", "Ice", "Fries", "Cream"]
var snacks : [String]
snacks = ["Potato", "Ice", "Fries", "Cream"]
print("Snacks : \(snacks)")
for snack in snacks{
    print("Each day  \(snack)")
}
for snack in 0..<snacks.count{
    print("New day : \(snacks[snack])")
}
for snack in snacks[2...]{
    print("New day one sided range: \(snack)")
}
for snack in snacks[...2]{
    print("New day other sided range: \(snack)")
}

for (index, value) in snacks.enumerated() {
    print("Index : \(index) Value : \(value)")
}
var numbers = Array(repeating :1, count: 5)
numbers[2] = 25
print("Numbers : \(numbers)")

var moreNumbers = Array(repeating :0, count: 3)
numbers[1] = 878
print("MoreNumbers : \(moreNumbers)")

var allNumbers = numbers + moreNumbers
allNumbers[3] = numbers[1] + moreNumbers[2]
allNumbers[5] = 100
print("AllNumbers : \(allNumbers)")

var grocery = ["Pringles","Juice"]
grocery += ["Fruits", "Choclates"]
grocery.append("tomatoes")
print("Grocery : \(grocery)")

grocery[1...3] = ["Milk", "Veggies", "Mayo"]
print("Grocery : \(grocery)")

grocery.insert("Ice cream", at : 1)
grocery.remove(at : 5)
grocery.removeLast()
print("Grocery : \(grocery)")

grocery.removeAll()
if grocery.isEmpty {
    print("Put something")
}else{
    print("Go back to market")
}

//var rajnikanth = [Int]() gives error for the type so cast it to Any
var rajnikanth = [Any]()
rajnikanth.append("Robot")
rajnikanth.append(2.0)
rajnikanth.append(1)
print("Rajnikanth : \(rajnikanth)")

//Sets
var languages = Set<String>()
languages.insert("Gujarati")
languages.insert("Hindi")
languages.insert("English")
languages.insert("Punjabi")
languages.insert("Telugu")
languages.insert("Sanskrit")
print("Languages : \(languages)")

languages.remove("Sanskrit")
print("Telugu is available in class : \(languages.contains("Telugu"))")
print("Sanskrit is available in class : \(languages.contains("Sanskrit"))")

for lang in languages.sorted() {
   print("Languages : \(lang)") 
}

let motherTongue : Set=["Urdu","Punjabi","Marathi","Hindi","Gujarati","Telugu","Sanskrit"] 
print("motherTongue : \(motherTongue)")

print("Union: \(languages.union(motherTongue).sorted())")

print("Symmentric difference: \(languages.symmetricDifference(motherTongue).sorted())")

print("Subtracting 1-2: \(languages.subtracting(motherTongue).sorted())")

print("Subtracting 2-1: \(motherTongue.subtracting(languages).sorted())")

var commonLang = languages.intersection(motherTongue).sorted()
print("CommomLanguages : \(commonLang)") 

print(languages.isSubset(of: commonLang))
print( languages.isSuperset(of: commonLang))
print(motherTongue.isDisjoint(with: languages))

//Dictionary

var appreciation = [String : String]()
appreciation["Day 1"] = "Potato"
appreciation["Day 3"] = "Donuts"
print("appreciation : \(appreciation)") 

print("\(appreciation.count) appreciation days") 

             //appreciation = [:]
if appreciation.isEmpty{
    print("No appreciation 😡... just studies")
}
appreciation["Day 3"] = "Donuts"

appreciation["Day 2"] = "Ice"
print("appreciation : \(appreciation)") 

let oldItem = appreciation.updateValue("Gola",forKey: "Day 2")
print("appreciation : \(appreciation)") 
print("old Item : \(oldItem)") 

if let day4Item = appreciation["Day 4"]{
    print("day4Item : \(day4Item)") 
}else{
    print("Nothing for day 4")
}

appreciation["Day 4"] = "Ice cream"
if let removeValue = appreciation.removeValue(forKey: "Day 3"){
    print("\(removeValue) are no longer available")
    print("appreciation : \(appreciation)") 
}else{
    print("Nothing found for Day 3")
}

appreciation["Day 2"] = nil
 print("appreciation : \(appreciation)") 

 for app in appreciation.keys {
     print("App key: \(app)")
 }
 
 for app in appreciation.values {
     print("App key: \(app)")
 }

for (key, value) in appreciation{
  print("App key: \(key) value : \(value)")
}

var flight = [String : AnyObject]()
flight["number"] = "9W 345" as AnyObject
flight["duration"] = "16 hours" as AnyObject
flight["cost"] = 1000.25 as AnyObject

print("flight : \(flight)") 












