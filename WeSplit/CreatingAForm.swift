//
//  CreatingAForm.swift
//  WeSplit
//
//  Created by Marko Zivanovic on 2.12.24..
//

import SwiftUI
struct CreateAForm: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello world")
                }
                Section {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                Section {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
            }
            .navigationTitle("Navigation Bar")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
