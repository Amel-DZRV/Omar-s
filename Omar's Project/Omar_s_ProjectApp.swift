//
//  Omar_s_ProjectApp.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import SwiftUI
import SwiftData

@main
struct Omar_s_ProjectApp: App {

    @StateObject private var fetchCategoriesService = FetchCategoriesService()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                CategoriesView()
                    .environmentObject(fetchCategoriesService)
            }
        }
    }
}
