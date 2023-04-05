//
//  ContentView.swift
//  Judo2Demo
//
//  Created by Philip Keller on 4/5/23.
//

import SwiftUI
import Judo

struct User: Identifiable {
    var id: String { email }
    var firstName: String
    var lastName: String
    var email: String
    var avatar: Image
}
    
var users = [
    User(firstName: "Michael", lastName: "Lawson", email: "michael.lawson@reqres.in", avatar: Image ("avatar-1")),
    User(firstName: "Lindsay", lastName: "Ferguson", email: "lindsay.ferguson@reqres.in", avatar: Image ("avatar-2")),
    User(firstName: "Tobias", lastName: "Funke", email: "tobias.funke@reqres.in", avatar: Image("avatar-3")),
    User(firstName: "Byron", lastName: "Fields", email: "byron. fields@regres.in", avatar: Image ("avatar-4")),
    User(firstName: "George", lastName: "Edwards", email: "george.edwards@regres.in", avatar: Image ("avatar-6")),
    User (firstName: "Rachel", lastName: "Howell", email: "rachel.howell@regres.in", avatar: Image("avatar-5"))
]

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(users) { user in
                Judo.View("Judo2Demo", component: "Row", properties: [
                    "firstName": user.firstName,
                    "lastName": user.lastName,
                    "emailAddress": user.email,
                    "avatar": user.avatar
                ])
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
