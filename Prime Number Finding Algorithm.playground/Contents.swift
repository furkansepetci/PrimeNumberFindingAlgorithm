import UIKit

func findPrimeNumber (border: Int ) {
    
    var PrimeNumberArray = [2]
    var counter = 0
    var counterTwo = 0
    let myArray : [Int] = Array(2...border)
    var divisorArray = [Int]()
    
    firstFor : for number in myArray {
        counter = 0
        divisorArray = Array(1...number)
        secondFor : for divisor in divisorArray {
            if number%divisor == 0{
                counter+=1
            }
            counterTwo+=1 // Indicates how many times the for loop is run.
            if counter > 2{
                break
            }
        }
        if counter<3 {
            PrimeNumberArray.append(number)
        }
    }
    print(PrimeNumberArray)
    print(counterTwo)
}

findPrimeNumber(border: 45)
