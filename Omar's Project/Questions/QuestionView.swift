//
//  QuestionView.swift
//  Omar's Project
//
//  Created by Amel Dizdarevic on 13.11.23.
//

import SwiftUI

struct QuestionView: View {

    @State var question: Question
    @State var isChecked = false

    var body: some View {
        Form(content: {
            Section("Question") {
                Text(question.text)
            }
            ForEach(question.answers) { answer in
                Section("Answer") {
                    HStack {
                        Text(answer.text)
                        Spacer()
                        Toggle(isOn: $isChecked, label: {})
                        .toggleStyle(CheckboxToggleStyle())
                    }
                }
            }
        })
    }
}

#Preview {
    QuestionView(question: .init(text: "Pitanje", isMultipleChoice: false, value: 5, answers: [.init(text: "odgovor 1", isCorrect: true)]))
}
