//
//  TestsView.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import SwiftUI

struct TestsView: View {

    @State var tests: [Test]

    var body: some View {
        List(tests) { test in
            NavigationLink {
                QuestionView(question: test.questions.first!) // ovo je losa praksa, da se force-unwrap radi
            } label: {
                Text(test.name)
            }


        }
    }
}

#Preview {
    TestsView(tests: [.init(name: "", questions: [])])
}
