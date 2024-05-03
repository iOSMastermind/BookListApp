//
//  BookListAppApp.swift
//  BookListApp
//
//  Created by Jinu on 03/05/2024.
//

import SwiftUI
import ComposableArchitecture
@main
struct BookListApp: App {
    private static let store = Store(initialState: BookListReducer.State(), reducer: {
        BookListReducer()
    })
    var body: some Scene {
        WindowGroup {
//            ContentView()
            BookListView(store: BookListApp.store)
        }
    }
}
