//
//  ViewController.swift
//  QuizzApp
//
//  Created by Vishaldeep Singh on 7/22/19.
//  Copyright © 2019 Vishaldeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allQuestion = QuestionPaper()
    var choosedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet var questionLabel: UILabel!
    

    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var progressLabel: UILabel!
    
    @IBOutlet var progressBar: UIProgressView!
    
   
    @IBOutlet weak var falseButton: UIButton!
    
  
    @IBOutlet var buttons: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.trueButton.layer.cornerRadius = 10
        self.falseButton.layer.cornerRadius = 10
        
        questionLabel.text = allQuestion.questionList[questionNumber].questionText
    }

    @IBAction func answerPressed(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1
        {
            choosedAnswer = true
            
        }
        else if (sender as AnyObject).tag == 2
        {
            choosedAnswer = false
        }
        
        checkAnswer()
        nextQuestion()
        
    }
    
    
    
    func checkAnswer()
    {
        if choosedAnswer == allQuestion.questionList[questionNumber].answer
        {
           
            print("True")
            updateUI()
        }
        else
        {
           
            print("False")
        }
    }
    
    func updateUI()
    {
        progressLabel.text = "Progress:\(questionNumber + 1)/10"
        score += 1
        scoreLabel.text = "Score:\(score)"
        
    }
    
    
    func nextQuestion() {
        
        if questionNumber < 9{
            questionNumber += 1
            questionLabel.text = allQuestion.questionList[questionNumber].questionText
        }
        else
        {
            print("End Quiz!!")
            questionLabel.text = "Quiz Time Over"
            buttons.isHidden = true
            questionNumber = 0
            let alert = UIAlertController(title: "Congratulation!!", message: "Do you want to restart quiz?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            
            startOver()
            
         
        }
        
        
    }
    
    func startOver()
    {
        
        questionNumber = 0
        buttons.isHidden = false
        progressLabel.text = "Progress:\(questionNumber + 1)/10"
        score = 0
        scoreLabel.text = "Score:\(score)"
        
        questionLabel.text = allQuestion.questionList[questionNumber].questionText
    }
    

}

