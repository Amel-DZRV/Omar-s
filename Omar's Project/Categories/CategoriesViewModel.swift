//
//  CategoriesViewModel.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import Foundation
import SwiftUI

final class CategoriesViewModel: ObservableObject {
    @Published var categories: [Category] = []

    var categoryName: String {
        categories.first?.name ?? ""
    }

    var tests: [Test] {
        categories.first(where: { $0.name == "Category A"})?.tests ?? []
    }
}


