//
//  CatImagesView.swift
//  TabbyCatApp
//
//  Created by msweidan on 16/08/2023.
//

import SwiftUI

struct CatImagesView: View {
    
    @State var catURL = "https://cataas.com/cat?key="
    
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: catURL)!) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
            Button {
                catURL += "1"
                print(catURL)
            } label: {
                Text("Random Cat")
            }
            .buttonStyle(.borderedProminent)

        }
        .onAppear {
            catURL += "1"
        }

    }
}

struct CatImagesView_Previews: PreviewProvider {
    static var previews: some View {
        CatImagesView()
    }
}
