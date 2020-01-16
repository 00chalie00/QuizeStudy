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
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizIns = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    @IBAction func choiseBtnPressed(_ sender: UIButton) {
        let senderTxt = sender.titleLabel?.text
        quizIns.socreNumCheck(answer: senderTxt!)
        quizIns.questionNumCheck()
        configureUI()
    }
    
    func configureUI() {
        scoreLbl.text = String(quizIns.getScore())
        questionTxt.text = quizIns.getQuestionText()
        choiceOne.setTitle(quizIns.getBtnTitle()[0], for: .normal)
        choiceTwo.setTitle(quizIns.getBtnTitle()[1], for: .normal)
        choiceThree.setTitle(quizIns.getBtnTitle()[2], for: .normal)
        progressBar.progress = quizIns.getProgressrate()
    }
    
}//End Of The Class
