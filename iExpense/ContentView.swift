//
//  ContentView.swift
//  iExpense
//
//  Created by Andy Dang It on 10/15/24.
//

import SwiftUI

@Observable

class User{
    var firstName = "Greatest"
    var lastName = "Ever"
}

struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
