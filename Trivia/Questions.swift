//
//  Questions.swift
//  Trivia
//
//  Created by David Viloria Ortega on 11/11/21.
//

import Foundation


struct Question: Codable {
    var category: String
    var type: String
    var difficulty: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
}

//The following code is used for testing when not fetching the questions from the API

struct LocalQuestion: Codable {
    var question: String
    var answer: Bool
}

final class Contenido {
    static let shared = Contenido()

    private init() {}

    func getQuestions() -> [LocalQuestion] {
        return [
            LocalQuestion(question: "Pregunta 1", answer: false),
            LocalQuestion(question: "Pregunta 2", answer: true),
            LocalQuestion(question: "Pregunta 3", answer: true),
            LocalQuestion(question: "Pregunta 4", answer: false),
            LocalQuestion(question: "Pregunta 5", answer: false),
            LocalQuestion(question: "Pregunta 6", answer: true),
            LocalQuestion(question: "Pregunta 7", answer: false),
            LocalQuestion(question: "Pregunta 8", answer: true),
            LocalQuestion(question: "Pregunta 9", answer: true),
            LocalQuestion(question: "Pregunta 10", answer: false),
            LocalQuestion(question: "Pregunta 11", answer: true)
        ]
    }

}
