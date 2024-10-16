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



struct ContentView: View {
    
    //    @State private var showingSheet = false
    //
    //    @State private var numbers = [Int]()
    //    @State private var currentNumber = 1
    
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
        
    }
}

#Preview {
    ContentView()
}
