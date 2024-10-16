//
//  ContentView.swift
//  iExpense
//
//  Created by Andy Dang It on 10/15/24.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        Text("Hello \(name)")
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct User: Codable {
    let firstNamed: String
    let lastNamed: String
}

struct ContentView: View {
    
@State private var user = User(firstNamed: "Greatest", lastNamed: "Ever")
    
    var body: some View {
        Button("Save User"){
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
