//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Andrey Khakimov on 29.01.2022.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let buttonTitle: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, buttonTitle: "Test", color: .red)
    }
}
