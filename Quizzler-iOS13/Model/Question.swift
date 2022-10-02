
import Foundation

//MARK: - structure that we use in QuizBrain in Array quiz

struct Question {
    
    let text: String
    let answer: [String]
    let coreectAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
      text = q
      answer = a
      coreectAnswer = correctAnswer
    }

}
