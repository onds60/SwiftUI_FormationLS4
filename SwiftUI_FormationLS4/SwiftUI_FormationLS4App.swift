//
//  SwiftUI_FormationLS4App.swift
//  SwiftUI_FormationLS4
//
//  Created by Olivier NERON DE SURGY on 20/10/2023.
//

import SwiftUI

@main
struct SwiftUI_FormationLS4App: App {
    var body: some Scene {
        WindowGroup {
            DependencyInjectionVue1(dataService: (TypiPostDataService()))
        }
    }
}
