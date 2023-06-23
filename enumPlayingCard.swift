import Foundation

public enum Rank: Int{ //The ": Int" means that the Rank is enum is of type int
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    public func simpleDescription() -> String{
        switch self{
        case .ace:
            return "Ace";
        case .two:
            return "Two";
        case .three:
            return "Three";
        case .four:
            return "Four";
        case .five:
            return "Five";
        case .six:
            return "Six";
        case .seven:
            return "Seven";
        case .eight:
            return "Eight";
        case .nine:
            return "Nine";
        case .ten:
            return "Ten";
        case .jack:
            return "Jack";
        case .queen:
            return "Queen";
        case .king:
            return "King";
        }
    }
}

public enum Suit: Int{
    case spades, hearts, diamonds, clubs;
    
    public func simpleDescription() -> String{
        switch self{
        case .spades:
            return "Spades";
        case .hearts:
            return "Hearts";
        case .clubs:
            return "Clubs";
        case .diamonds:
            return "Diamonds";
        }
    }
    public func color() -> String{
        switch self{
        case .spades, .clubs:
            return "Black";
        case .hearts, .diamonds:
            return "Red"
        }
    }
}

/*Code to run with the following
 let hearts = Suit.hearts
 let heartsDesc = hearts.simpleDescription()
 print(heartsDesc)
 let heartsColor = hearts.color()
 print(heartsColor)
 */

