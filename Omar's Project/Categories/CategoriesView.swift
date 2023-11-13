//
//  ContentView.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import SwiftUI
import SwiftData

struct CategoriesView: View {

    @StateObject private var viewModel = CategoriesViewModel()
    @EnvironmentObject private var fetchingService: FetchCategoriesService

    var body: some View {
        VStack {
            NavigationLink {
                TestsView(tests: viewModel.tests)
            } label: {
                Image(systemName: "car.fill")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .padding()
                    .border(.black)
            }
            Text(viewModel.categoryName)
        }
        .onAppear {
            viewModel.categories = fetchingService.fetch()
        }
    }
}

#Preview {
    CategoriesView()
}
