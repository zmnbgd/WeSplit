//
//  CreatingViewsInALoop.swift
//  WeSplit
//
//  Created by Marko Zivanovic on 3.12.24..
//

import SwiftUI

struct CreatingViewsInALoop: View {
    
    let students = ["Harry", "Hermiona", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Select a student")
    }
}

#Preview {
    CreatingViewsInALoop()
}
