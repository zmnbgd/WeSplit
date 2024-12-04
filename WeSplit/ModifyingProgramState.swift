//
//  ModifyingProgramState.swift
//  WeSplit
//
//  Created by Marko Zivanovic on 2.12.24..
//

import SwiftUI

struct ModifyingProgramState: View {
    @State var tapCount = 0
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ModifyingProgramState()
}
