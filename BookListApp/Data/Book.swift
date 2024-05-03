//
//  Book.swift
//  BookListApp
//
//  Created by Jinu on 03/05/2024.
//

import Foundation

struct Book: Codable, Equatable {
    let url : String
    let name, isbn: String
    let authors: [String]
    let numberOfPages: Int
    let publisher: String
    let country: String
    let mediaType: String
    let released: String
    let characters: [String]
    let povCharacters: [String]
}
