//
//  Person.swift
//  ContactListAp
//
//  Created by SWIFT on 08.04.2025.
//




struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        var personsList: [Person] = []
        let maxCount = min(names.count, surnames.count , phoneNumbers.count, emails.count)
        
        let shuffledNames = names.shuffled()
        let shuffledSurnames = surnames.shuffled()
        let shuffledEmails = emails.shuffled()
        let shuffledPhoneNumbers = phoneNumbers.shuffled()
        
        for index in 0..<maxCount {
            let person = Person(
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                email: shuffledEmails[index],
                phoneNumber: shuffledPhoneNumbers[index]
            )
            personsList.append(person)
        }
        return personsList
    }
    
}




