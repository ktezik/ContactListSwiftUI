//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Иван Гришин on 28.11.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            ContactAnotherView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
