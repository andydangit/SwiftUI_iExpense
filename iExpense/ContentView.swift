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
    
    @State private var showingSheet = false
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        //        Button("Show Sheet") {
        //            showingSheet.toggle()
        //        }
        //        .sheet(isPresented: $showingSheet) {
        //            SecondView(name: "Andy")
        //        }
        
        NavigationStack {
            
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar{
                EditButton()
            }
        }
    }
    
    func removeRows ( at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
