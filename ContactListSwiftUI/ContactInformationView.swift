//
//  ContactInformationView.swift
//  ContactListSwiftUI
//
//  Created by Иван Гришин on 28.11.2021.
//

import SwiftUI

struct ContactInformationView: View {
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName())
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(person: Person.getPerson().first!)
    }
}
