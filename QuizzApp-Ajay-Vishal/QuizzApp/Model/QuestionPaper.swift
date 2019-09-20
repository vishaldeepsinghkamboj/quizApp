//
//  QuestionPaper.swift
//  QuizzApp
//
//  Created by Vishaldeep Singh on 7/22/19.
//  Copyright © 2019 Vishaldeep Singh. All rights reserved.
//

import Foundation

class QuestionPaper
{
    
    var questionList = [Question]()
    
    init() {
        
        let question1 = Question(text:"The human body has four lungs", correctAnswer: false)
        
        let question2 = Question(text:"The study of plants is known as botany", correctAnswer: true)
        
        let question3 = Question(text:"Spider have six leg", correctAnswer: false)
        
        
        let question4 = Question(text:"Mount Kilimanjaro is the tallest mountain in the world", correctAnswer: true)
        
        let question5 = Question(text:"Venus is the collest planet to the sun  ", correctAnswer: false)
        
        let question6 = Question(text:"Albert Einstein was awarded the Nobel Prize in Physics.", correctAnswer: true)
        
        
        let question7 = Question(text:"The American Civil War ended in 1776.", correctAnswer: false)
        
        
        let question8 = Question(text:"There are seven red stripes in the United States flag.", correctAnswer: true)
        
        
        let question9 = Question(text:"No bird can fly backwards.", correctAnswer: false)
        
        
        let question10 = Question(text:"A right triangle can never be equilateral.", correctAnswer: true)
        
        
        questionList.append(question1)
        questionList.append(question2)
        questionList.append(question3)
        questionList.append(question4)
        questionList.append(question5)
        questionList.append(question6)
        questionList.append(question7)
        questionList.append(question8)
        questionList.append(question9)
        questionList.append(question10)
        
        
        
        
        
        
    }
}
