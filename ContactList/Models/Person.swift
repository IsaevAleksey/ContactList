//
//  Person.swift
//  ContactList
//
//  Created by Алексей Исаев on 08.12.2022.
//

struct Person {
    let name: String
    let lastName: String
    let email: String
    let phoneNumber: String
    var fullName: String {
        "\(name) \(lastName)"
    }

    static func getPersonList() -> [Person] {
        var persons = [Person(name: names.randomElement()!, lastName: lastNames.randomElement()!, email: emails.randomElement()!, phoneNumber: phoneNumbers.randomElement()!)]
        for person in persons {
            let newPerson = Person(name: names.randomElement()!, lastName: lastNames.randomElement()!, email: emails.randomElement()!, phoneNumber: phoneNumbers.randomElement()!)
                if person == newPerson {
                    continue
                } else {
                    persons.append(newPerson)

                }
            
        }
        return persons
    }
}


extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name &&
        lhs.lastName == rhs.lastName &&
        lhs.email == rhs.email &&
        lhs.phoneNumber == rhs.phoneNumber
    }
}
