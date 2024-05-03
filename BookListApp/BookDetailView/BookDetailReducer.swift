//
//  BookDetailReducer.swift
//  BookListApp
//
//  Created by Jinu on 03/05/2024.
//

import Foundation
import ComposableArchitecture

class BookDetailReducer: Reducer {
    
    struct State {
        var book: Book
        var characters: [Character]?
        var isLoading: Bool = false
    }
    
    enum Action {
        case fetchCharecters
        case characterFetched([Character]?)
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .fetchCharecters:
            state.isLoading = true
            return .none
        case let .characterFetched( characters):
            state.isLoading = false
            state.characters = characters
            return .none
        }
    }
}
