//
//  CounterView.swift
//  Counter
//
//  Created by David Santiago on 28/10/22.
//

import SwiftUI

struct CounterView: View {
    
    var counterNumber: String
    
    var body: some View {
        Text(counterNumber)
            .foregroundColor(.white)
            .font(.title)
            .frame(width: 100, height: 100)
            .background(
                Circle()
                    .fill(Color.black)
            )
            .frame(maxHeight: .infinity)
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(counterNumber: "1")
    }
}
