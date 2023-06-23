import Foundation

public struct Card {
    var rank: Rank
    var suit: Suit
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    public func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

public struct Deck {
    public var deck = [Card]()
}
public func createDeck() -> Deck{
    var deck = Deck()
    var numbers = Array(1...52)
    numbers.shuffle()
    for number in numbers {
        let rankValue = (number - 1) % 13 + 1
        guard let rank = Rank(rawValue: rankValue),
              let suit = Suit(rawValue: (number - 1) / 13) else {
            fatalError("Invalid rank or suit")
        }
        let card = Card(rank: rank, suit: suit)
        deck.deck.append(card)
    }
    return deck
}
/* This is how to create a single card in Swift
 let card = Card(rank: .ace, suit: .diamonds)
 print(card.simpleDescription())\
 */

/* This lets a person create a deck of cards
 let deck = createDeck()
 for card in deck.deck{
     print(card.simpleDescription())
 }
 */
