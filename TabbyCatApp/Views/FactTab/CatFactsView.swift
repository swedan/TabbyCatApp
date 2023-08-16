//
//  CatFactsView.swift
//  TabbyCatApp
//
//  Created by msweidan on 16/08/2023.
//

import SwiftUI

struct CatFactsView: View {
    
    @StateObject var catFactsManager = CatFactsManager()

    var body: some View {
        VStack{
            if let catFact = catFactsManager.catFact {
                Text(catFact.fact)
                    .padding()

            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .onAppear {
            catFactsManager.getCatFact()
        }
    }
}

struct CatFactsView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactsView()
    }
}
