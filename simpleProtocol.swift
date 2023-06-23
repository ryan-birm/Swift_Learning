import Foundation

public protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

public class SimpleClass: ExampleProtocol {
    public var simpleDescription: String
    var anotherProperty: Int
    public init(simpleDescription: String, anotherProperty: Int) {
        self.simpleDescription = simpleDescription
        self.anotherProperty = anotherProperty
    }
    public func adjust() {
        simpleDescription += "  Now 100% adjust."
    }
}

public struct SimpleStructure: ExampleProtocol {
    public var simpleDescription: String
    public init(simpleDescription: String) {
        self.simpleDescription = simpleDescription
    }
    public mutating func adjust() { //The mutating key word means that the structure is being modified
        simpleDescription += " (adjusted)"
    }
}
 
/*Run the code
 var a = SimpleClass(simpleDescription: "A very simple class.", anotherProperty: 234)
 a.adjust()
 print(a.simpleDescription)


 var b = SimpleStructure(simpleDescription: "A simple structure")
 b.adjust()
 print(b.simpleDescription)
 */

