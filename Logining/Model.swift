//
//  Model.swift
//  Logining
//
//  Created by Даниил Хантуров on 04.04.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "User",
             password: "qwerty",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    let someText: String
     
    var fullname: String {"\(name) \(surname)"}
    
    static func getPerson() -> Person {
        Person(name: "Daniil",
               surname: "Khanturov",
               image: "spb",
               someText:"Something about me")
    }

}

