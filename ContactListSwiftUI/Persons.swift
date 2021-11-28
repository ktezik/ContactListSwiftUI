//
//  Persons.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    func fullName() -> String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let namesShuffled = names.shuffled()
        let surnamesShuffled = surnames.shuffled()
        let phonesShuffled = phoneNumbers.shuffled()
        let emailsShuffled = emails.shuffled()
        
        let iterationCount = min(namesShuffled.count, surnamesShuffled.count, phonesShuffled.count, emailsShuffled.count)
        
        for shuffled in 1..<iterationCount {
            let person = Person(
                name: namesShuffled[shuffled],
                surname: surnamesShuffled[shuffled],
                phoneNumber: phonesShuffled[shuffled],
                email: emailsShuffled[shuffled]
            )
            
            persons.append(person)
        }
    
        return persons
    }
}

