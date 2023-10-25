//
//  TypiPostModel.swift
//  SwiftUI_FormationLS3
//
//  Created by Olivier NERON DE SURGY on 19/10/2023.
//

import SwiftUI

struct TypiPostModel: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
