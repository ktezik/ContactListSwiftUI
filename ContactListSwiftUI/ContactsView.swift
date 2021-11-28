//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Иван Гришин on 28.11.2021.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(destination: ContactInformationView(boardName: "\(person.fullName())", person: person)) {
                    Text("\(person.fullName())")
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getPerson())
    }
}
