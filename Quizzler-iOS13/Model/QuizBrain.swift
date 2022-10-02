
import Foundation

struct QuizBrain {
    
    var questionNamber = 0
    var score = 0
    
    let quiz = [
                Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    //MARK: - send to the ViewController answers for buttons
    
    func firstButton() -> String {
        return quiz[questionNamber].answer[0]
    }
    func secondButton() -> String {
        return quiz[questionNamber].answer[1]
    }
    func thirdButton() -> String {
        return quiz[questionNamber].answer[2]
    }
    
    //MARK: - function where we update questionNamber and score, we use that in ViewController
   
    mutating func next() {
        
        if questionNamber + 1 < quiz.count {
            questionNamber += 1
        } else {
            score = 0
            questionNamber = 0
        }
    }
    
    //MARK: - send to the viewController actual question, progress in Float, score of question and bool true or false
    
    func getQuestion() -> String {
        return quiz[questionNamber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNamber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func checkUnswer(_ userAnswer: String) -> Bool {
        
        if quiz[questionNamber].coreectAnswer == userAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
}
