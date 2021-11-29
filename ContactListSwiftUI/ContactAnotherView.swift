//
//  ContactAnotherView.swift
//  ContactListSwiftUI
//
//  Created by Иван Гришин on 28.11.2021.
//

import SwiftUI

struct ContactAnotherView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                Section(header: Text(person.fullName()).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactAnotherView_Previews: PreviewProvider {
    static var previews: some View {
        ContactAnotherView(persons: Person.getPerson())
    }
}
