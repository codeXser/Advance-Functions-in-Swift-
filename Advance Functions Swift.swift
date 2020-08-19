func introduce(name: String) {
    print("Hi my name is \(name)")
}
introduce(name: "Marrion")

func addTogether(x: Int, y:Int) {
    let sum = x + y
    print(sum)
}

addTogether(x: 1, y: 1000)

func divider(number1: Double, number2:Double){
    print(number1 / number2)
}
divider(number1: 5, number2: 2)


func sayHello(to name:String) {
    let string = "Hello " + " " + name
    print(string)
}

sayHello(to: "adjei")





//func triple(number: Int){
//    print(number * 3)
//}

func triple(number: Int) -> Int {
      return number * 3

}

let Age = 28

let tripleAge = triple(number: Age)

print(tripleAge)


func nameAdder(firstName: String, lastName: String) -> String{
    return "\(firstName)  \(lastName)"
}

let fullName = nameAdder(firstName: "Marrion", lastName: "Adjei")
print(fullName)


// prime numner from 1...100
let numbers = 1 ... 100
let primeNumbers = numbers.filter({ number -> Bool in
    isPrime(number)
})

func isPrime(_ number: Int) -> Bool {
    let testNumbers = 2 ..< number
    return !testNumbers.contains(where: { testNumber -> Bool in
        number.isMultiple(of: testNumber)
    }
}

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    } else {
        let testNumbers = 2 ..< number
        return !testNumbers.contains(where: { testNumber -> Bool in
            number.isMultiple(of: testNumber)
        })
    }
}

func primes(upTo n: Int) -> [Int] {
    let numbers = 1 ... n
    let primes = numbers.filter({ number -> Bool in
        isPrime(number)
    })
    return primes
}




// To print out the prime number
func printPrimes(upTo n: Int) {
    let primeNumbers = primes(upTo: n)
    print(
        primeNumbers.map({ number -> String in
            String(number)
        })
        .joined(separator: ", ")
    )
}

 Here is a version from WWDC2015
func primesMutating(to n: Int) -> [Int] {
  var numbers = [Int](2 ..< n)
  for i in 0 ..< n-2 {
    // guard let prime = numbers[i] where prime > 0 else { continue }
    let prime = numbers[i]
    guard prime > 0 else { continue }
    for multiple in stride(from: 2 * prime-2, to: n-2, by: prime) {
      numbers[multiple] = 0
    }
  }
  return numbers.filter { $0 > 0 }
}


// order of user
 let usersFavoriteOrder = "chicken, fries, shake"

func orderFood(_ order: String = usersFavoriteOrder){
    print(order)
}
orderFood()
orderFood("i will like some fufu from Ghana please")


func lambdaSchoolChallenge(fator1: Int, factor2: Int, limit: Int) {
    
    for number  in 0...limit {
        if number % fator1 == 0 && number % factor2 == 0 {
        print("Lambda School")
        }else if number % fator1 == 0 {
            print("Lambda")
        }else if number & factor2 == 0 {
            print("School")
        }else {
            print(number)
        }
}
}

lambdaSchoolChallenge(fator1: 3, factor2: 5, limit: 100)
