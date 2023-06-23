import Foundation

/* This is an example of a closure function. The purpose is to show how the variable in the closure sticks
   and is carried throughout the calling of the array*/

public func closurePractice(){
    let numbers = [1, 2, 3, 4, 5]
    let multipliedNumbers = numbers.map({ (number: Int) -> Int in
        let result = 3 * number
        return result
    })
    print("The result after the closure function is \(multipliedNumbers)")
    
}



