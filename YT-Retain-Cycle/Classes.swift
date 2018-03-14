import Foundation

class Person {
    
    let name: String
    var macbook: Macbook?
    
    init(name: String, macbook: Macbook?){
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) is being Denitialized")
    }
    
}

class Macbook { // lesser important object
    
    let macbookName: String
    weak var owner: Person?
    
    init(macbookName: String, owner: Person?) {
        
        self.macbookName = macbookName
        self.owner = owner
    }
    
    deinit {
        print("Macbook: \(macbookName) is being deinitialized")
    }

}
