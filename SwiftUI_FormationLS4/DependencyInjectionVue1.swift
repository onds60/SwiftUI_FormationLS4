//
//  DependancyInjectionVue.swift
//  SwiftUI_FormationLS3
//
//  Created by Olivier NERON DE SURGY on 19/10/2023.
//

import SwiftUI

struct DependencyInjectionVue1: View {
    @StateObject private var vm: DependencyInjectionViewModel
    
    init(dataService: TypiPostDataService) {
        _vm = StateObject(wrappedValue: DependencyInjectionViewModel(dataService: dataService))
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Button("Télécharger les données Typi") {
                Task{
                    await vm.getTypiPosts()
                }
            }
            List {
                ForEach(vm.typiPosts) { post in
                    VStack{
                        Text(post.title)
                            .bold()
                        Text(post.body)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    DependencyInjectionVue1(dataService: TypiPostDataService())
}
