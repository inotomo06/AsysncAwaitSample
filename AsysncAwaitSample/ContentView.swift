//
//  ContentView.swift
//  AsysncAwaitSample
//
//  Created by cmStudent on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "await"
    var body: some View {
        Text(text)
            .padding()
            .task {
                await sleepFunc()
            }
    }
    
    private func sleepFunc() async {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            text = "Async"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
