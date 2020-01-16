//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var scoreNum = 0
    var questionNum = 0
    
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
    
    
    mutating func getScore() -> Int {
        return scoreNum
    }
    
    func getQuestionText() -> String {
        return quiz[questionNum].q
    }
    
    func getBtnTitle() -> [String] {
        return quiz[questionNum].a
    }
    
    func getProgressrate() -> Float {
        return Float(questionNum) / Float(quiz.count)
    }
    
    mutating func socreNumCheck(answer: String) {
        if answer == quiz[questionNum].correctAnswer {
            scoreNum += 1
            print(scoreNum)
        } else {
            return
        }
    }
    
    mutating func questionNumCheck() {
        if questionNum + 1 < quiz.count {
            questionNum += 1
        } else {
            questionNum = 0
        }
    }
    
}//End Of The Struct

