//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var questionTxt: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    
    var questionNum = 0
    var scoreNum = 0
    var questionStr = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    @IBAction func choiseBtnPressed(_ sender: UIButton) {
        if questionNum + 1 <= questionStr.quiz.count {
            let btnTitle = sender.titleLabel?.text
            
            if btnTitle == questionStr.quiz[questionNum].correctAnswer {
                questionNum += 1
                scoreNum += 1
                configureUI()
            } else {
                questionNum += 1
                configureUI()
            }
        } else {
            questionNum = 0
            scoreNum = 0
        }
    }
    
    func configureUI() {
        questionTxt.text = questionStr.quiz[questionNum].q
        scoreLbl.text = String(scoreNum)
        
        self.choiceOne.setTitle(questionStr.quiz[questionNum].a[0], for: .normal)
        self.choiceTwo.setTitle(questionStr.quiz[questionNum].a[1], for: .normal)
        self.choiceThree.setTitle(questionStr.quiz[questionNum].a[2], for: .normal)
    }
    
}//End Of The Class
