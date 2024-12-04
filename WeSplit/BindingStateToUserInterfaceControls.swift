//
//  BindingStateToUserInterfaceControls.swift
//  WeSplit
//
//  Created by Marko Zivanovic on 3.12.24..
//

import SwiftUI

struct BindingStateToUserInterfaceControls: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            //MARK: $name - Two-way binding
            TextField("Enter your name", text: $name)
            //MARK: name - read the value
            Text("Your name is: \(name)")
        }
    }
}

#Preview {
    BindingStateToUserInterfaceControls()
}
