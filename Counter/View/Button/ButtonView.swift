//
//  ButtonView.swift
//  Counter
//
//  Created by David Santiago on 28/10/22.
//

import SwiftUI

struct ButtonView: View {
    
    let onClick: () -> ()
    var buttonText: String
    var isCounterButton: Bool
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(buttonText)
                .padding()
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(isCounterButton ? Color.blue : Color.red)
                .cornerRadius(6)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(
            onClick: {},
            buttonText: "Count",
            isCounterButton: false
        )
        ButtonView(
            onClick: {},
            buttonText: "Count",
            isCounterButton: true
        )
    }
}
