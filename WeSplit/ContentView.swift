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
    @FocusState private var amountIsFocused: Bool
    
    var finalChech: Double {
        var people = Double(numberOfPeople + 2)
        var tip = Double(tipPercentage)
        var checkWithTip = checkAmount / 100 * tip
        var checkTotal = checkAmount + checkWithTip
    }
    
    
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var totalPerPerson: Double {
        //Calsulate total per person here
        let peopleConut = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipAmount = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipAmount
        let amountPerPerson = grandTotal / peopleConut
        
        //return 0
        return amountPerPerson
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    //MARK: DecimalPad with dot
                        .keyboardType(.decimalPad)
                    
                    Picker("number of People", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section("How much do you want to tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                //MARK: Challenge - WeSplit - Add another section showing the total amount for the check – i.e., the original amount plus tip value, without dividing by the number of people.
                Section {
                    Text(finalChech, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                //MARK: Section for check amount
                // MARK: Challenge - WeSplit - 1. Add a header to the third section, saying “Amount per person”
                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}




