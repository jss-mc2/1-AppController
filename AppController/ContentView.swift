//
//  ContentView.swift
//  AppController
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    func controlAppToControlToggleHelloWorld() {
        if let url = URL(string: "apptocontrol://toggleHelloWorld") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Toggle")
                .onTapGesture(perform: {
                    controlAppToControlToggleHelloWorld()
                })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
