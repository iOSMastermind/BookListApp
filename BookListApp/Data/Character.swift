//
//  Character.swift
//  BookListApp
//
//  Created by Jinu on 03/05/2024.
//

import Foundation

struct Character: Codable, Equatable {
    let url: String
    let name,gender,culture,born: String
    let died: String
    let titles, aliases: [String]
    let father,mother: String
    let spouse: String
    let alligiances,books,povBooks: [String]
    let tvSeries,playdBy: [String]
}
