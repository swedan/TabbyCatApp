//
//  ContentView.swift
//  TabbyCatApp
//
//  Created by msweidan on 16/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            CatFactsView()
                .tabItem {
                    Label("Cat Fact", systemImage:"lightbulb.fill")
                }
            
            CatImagesView()
                .tabItem {
                    Label("Random Cat", systemImage: "photo")
                }
            
            CatBounceView()
                .tabItem {
                    Label("Bouncy Cat", systemImage: "arrowshape.bounce.right")
                }
            
            CatGalleryView()
                .tabItem {
                    Label("Cat Gallery", systemImage: "photo.on.rectangle")
                }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
