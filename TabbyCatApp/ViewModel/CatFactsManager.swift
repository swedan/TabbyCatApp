//
//  CatFactsManager.swift
//  TabbyCatApp
//
//  Created by msweidan on 16/08/2023.
//

import Foundation

import SwiftUI

class CatFactsManager: ObservableObject {
    
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    @Published var catFact: CatFact?

    func getCatFact() {
        catFact = nil

        Task {
            // downloading the JSON form the internet using backround thread
            let (data, _) = try await URLSession.shared.data(from: apiURL)
            print("🐱🐱🐱 Got the data!")
            print(data)
            
            print(String(data: data, encoding: .utf8)!)
            
            // Main thread - UI view
            try await MainActor.run {
                self.catFact = try JSONDecoder().decode(CatFact.self, from: data)
            }

            
       }
    }
}
