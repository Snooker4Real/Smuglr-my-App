//
//  ContentView.swift
//  Smuglr
//
//  Created by Jonathan Cindano Mwamba on 05/06/2021.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
            
            Text(location.description).padding(.horizontal)
            
            Text("Did you know ?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more).padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location:
                Location.example)
        }
    }
}
