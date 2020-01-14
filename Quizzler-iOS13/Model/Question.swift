//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by formathead on 2020/01/14.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var q: String
    var a: [String]
    var correctAnswer: String
    
    init(q: String, a:[String], correctAnswer: String) {
        self.q = q
        self.a = a
        self.correctAnswer = correctAnswer
    }
}
