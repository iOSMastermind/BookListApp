//
//  BookListReducer.swift
//  BookListApp
//
//  Created by Jinu on 03/05/2024.
//

import Foundation
import ComposableArchitecture

class BookListReducer: Reducer {
   
    struct State: Equatable {
        //we will keep our booklist here.
        var books: [Book]?
    }
    enum Action {
        // we will keep action like fetchbooks and books fetched here.
        case fetchBooks
        case booksFetched([Book]?)
    }
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        // function to perform action and update state.
        switch action {
        case .fetchBooks:
            return .run { send in
                let bookListUrl = "https://anapioficeandfire.com/api/books"
                let (data,_) = try await URLSession.shared.data(from: URL(string: bookListUrl)!)
                let books = try? JSONDecoder().decode([Book].self, from: data)
                await send(.booksFetched(books))
            }
        case let .booksFetched(books):
            state.books = books
            return .none
        }
    }
}
