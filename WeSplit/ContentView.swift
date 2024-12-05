//
//  ContentView.swift
//  WeSplit
//
//  Created by Marko Zivanovic on 27.11.24..
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                //MARK: DecimalPad with dot
                    .keyboardType(.decimalPad)
            }
            //MARK: Section for check amount
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}




