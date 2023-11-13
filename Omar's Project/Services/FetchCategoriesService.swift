//
//  FetchCategoriesService.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import Foundation
import SwiftUI

// Protocol ti je kao template i razlog zasto ih koristimo jeste da bismo napravili ovaj code - testable.
protocol Fetching {
    associatedtype Model: Decodable // Ovo nam omogucava da koristimo ovaj protocol na bilo kojem modelu koji je Decodable
    func fetch() -> [Model]
}

final class FetchCategoriesService: Fetching, ObservableObject {
    typealias Model = Category // Ovdje smo napravili da je ovaj "Model" zapravo nas "Category" model

    static let shared = FetchCategoriesService() // Ovo je singleton pattern -> sto znaci ovo je jedina instanca ovog servisa i ovo cemo koristiti da proslijedimo gdje nam treba. Pomocu ovog design patterna: "Singleton" uvijek cemo imati samo jednu i orginalnu klasu za ovaj service, necemo "praviti" (instancirati) nove.

    func fetch() -> [Category] {
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                let categories = try decoder.decode(TestCateogries.self, from: data)
                return categories.categories
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        return []
    }
}
