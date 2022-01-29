//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonTimerView(timer: timer)
            ButtonView(action: {userManager.name = ""}, buttonTitle: "Log Out", color: .blue)
                .padding(.top, 200)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonTimerView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        ButtonView(action: timer.startTimer, buttonTitle: timer.buttonTitle, color: .red)
    }
}
