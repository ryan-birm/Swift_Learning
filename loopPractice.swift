import Foundation
/*This code is for showing the use of a for loop with (_, )
  It also shows how to find a specific thing within a dictionary
  by singling out a dictionary key*/
public func soccerTeamsForLoop (){
    let soccerTeams = [
        "England" : ["Newcastle", "Man U", "Man C", "Arsenal", "Liverpool", "Chelsea"],
        "Spain" : ["Atletic Bilbao", "Atletico Madrid", "Barcelona", "Real Madrid"],
        "Itlay" : ["Napoli", "Inter", "Milan", "Juventus"]
    ]

    var longestName = ""

    for (_, teams) in soccerTeams{
        for teamNames in teams{
            if longestName.count < teamNames.count{
                longestName = teamNames
            }
        }
    }
    print("The team with the longest name is \(longestName)")
    longestName = ""
    if let country = soccerTeams["England"]{
        for team in country{
            if longestName.count < team.count{
                longestName = team
            }
        }
    }
    print("The ream with the longest name in England is \(longestName)")
}
/* The code below demonstrates a repeat while loop*/
public func reapeatWhile (){
    var x = 4
    repeat{
        print("\(x)\n")
        x-=1
    }while x > 0
}

/* The code below will show how different types of for loops work.
   The first will use the "for x ..< 4" and the other will use
   "for x ... 4"*/
public func forLoopsWithDifferences (){
    print("This is the ..< loop")
    for x in 0 ..< 4 {
        print(x)
    }
    print("This is the ... loop")
    for x in 0 ... 4{
        print(x)
    }
            
}

