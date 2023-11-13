import Foundation

// MARK: - TestCateogries
struct TestCateogries: Codable {
    let categories: [Category]
}

// MARK: - Category
struct Category: Codable {
    let name: String
    let tests: [Test]
}

// MARK: - Test
struct Test: Codable, Identifiable {
    let id = UUID() // ovo se treba napraviti na drugaciji nacin, da nema warninga
    let name: String
    let questions: [Question]
}

// MARK: - Question
struct Question: Codable {
    let text: String
    let isMultipleChoice: Bool
    let value: Int
    let answers: [Answer]
}

// MARK: - Answer
struct Answer: Codable, Identifiable {
    let id = UUID()
    let text: String
    let isCorrect: Bool
}
