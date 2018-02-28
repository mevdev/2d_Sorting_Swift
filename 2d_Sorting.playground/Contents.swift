//Robert Linnemann
import UIKit

print("TWO DIMENSIONAL SORTING IN SWIFT\n\n")

class Character {
    var name = ""
    var isTheBest = false
    init(name: String, isTheBest: Bool) {
        self.name = name
        self.isTheBest = isTheBest
    }
}


var allCharacters = [Character]()
allCharacters.append(Character(name: "Captain America", isTheBest: true))
allCharacters.append(Character(name: "Wolverine", isTheBest: true))
allCharacters.append(Character(name: "Captain Marvel", isTheBest: false))
allCharacters.append(Character(name: "Iron Man", isTheBest: false))
allCharacters.append(Character(name: "Star-Lord", isTheBest: true))
allCharacters.append(Character(name: "Drax", isTheBest: false))
allCharacters.append(Character(name: "Deadpool", isTheBest: true))
allCharacters.append(Character(name: "Thor", isTheBest: false))
allCharacters.append(Character(name: "Hulk", isTheBest: false))



func walkinSorter(this: Character, that: Character) -> Bool {
    if(this.isTheBest == that.isTheBest) {
//        print("compare: \(this.name) && \(that.name)")
//        print("compare configure: \(this.isTheBest) && \(that.isTheBest)")
//        print("-- - - - -- ")
        return this.name.caseInsensitiveCompare(that.name) == .orderedAscending
    }
    return this.isTheBest //to return isTheBest first, return that.isTheBest
}

print("unsorted:")
for r in allCharacters {
    print("\(r.isTheBest)     \(r.name)")
}

allCharacters.sort(by: walkinSorter(this:that:))

print("\n\nsorted:")
for r in allCharacters {
    print("\(r.isTheBest)     \(r.name)")
}

