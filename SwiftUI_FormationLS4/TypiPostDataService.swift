//
//  TypiPostDataService.swift
//  SwiftUI_FormationLS3
//
//  Created by Olivier NERON DE SURGY on 19/10/2023.
//

import SwiftUI

class TypiPostDataService: ObservableObject {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    private var typiPosts: [TypiPostModel]? = nil
    
    func downloadTypiPosts() async throws -> [TypiPostModel]?  {
//        let (data, response) = try await URLSession.shared.data(from: url)
        let (data, _) = try await URLSession.shared.data(from: url)
//        print("response : \(response.description)")
        guard let receivedPosts = try? JSONDecoder().decode([TypiPostModel].self, from: data) else {
            print("erreur de décodage JSON")
            return nil
        }
        return receivedPosts
    }
}
