//
//  ContactInformationView.swift
//  ContactListSwiftUI
//
//  Created by Иван Гришин on 28.11.2021.
//

import SwiftUI

struct ContactInformationView: View {
    let boardName: String
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 300, height: 300)
            HStack {
                Image(systemName: "envelope.fill")
                Text("\(person.email)")
                Spacer()
            } .padding()
            HStack {
                Image(systemName: "phone.fill")
                Text("\(person.phoneNumber)")
                Spacer()
            } .padding(.leading)
            Spacer()
        } .padding()
            .navigationTitle(boardName)
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(boardName: "Ivan Grishin", person: Person.init(
            name: "Ivan",
            surname: "Grishin",
            phoneNumber: "555-55-55",
            email: "ktez@ktez.ru")
        )
    }
}
