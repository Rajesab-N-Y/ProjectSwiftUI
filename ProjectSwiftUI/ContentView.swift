//
//  ContentView.swift
//  ProjectSwiftUI
//
//  Created by Rajesab N Y on 19/07/23.
//

import SwiftUI
import CoreData

extension Image {
    
    func imageModifier() -> some View{
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View{
        Image("image-1")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
