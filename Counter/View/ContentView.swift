//
//  ContentView.swift
//  Counter
//
//  Created by David Santiago on 28/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            CounterView(counterNumber: "\(counter)")
            HStack {
                ButtonView(
                    onClick: {
                        counter += 1
                    },
                    buttonText: "Count",
                    isCounterButton: true
                )
                ButtonView(
                    onClick: {
                        if counter > 0 {
                            counter -= 1
                        }
                    },
                    buttonText: "Decrement",
                    isCounterButton: false
                )
                .disabled(counter == 0 ? true: false)
            }
            Spacer()
        }
        .padding()
        .background(Color.backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
