//
//  DependencyInjectionViewModel.swift
//  SwiftUI_FormationLS3
//
//  Created by Olivier NERON DE SURGY on 19/10/2023.
//

import SwiftUI

@MainActor
class DependencyInjectionViewModel: ObservableObject {
    @Published var typiPosts: [TypiPostModel] = []
    let dataService: TypiPostDataService
    
    init(dataService: TypiPostDataService) {
        self.dataService = dataService
    }
    
    func getTypiPosts() async {
        do {
            if let typiPosts_ = try await dataService.downloadTypiPosts() {
                typiPosts = typiPosts_
            }
        } catch {
            print("Erreur : \(error.localizedDescription)")
        }
    }
}
