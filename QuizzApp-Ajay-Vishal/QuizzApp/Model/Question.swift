//
//  Question.swift
//  QuizzApp
//
//  Created by Vishaldeep Singh on 7/22/19.
//  Copyright © 2019 Vishaldeep Singh. All rights reserved.
//

import Foundation

class Question
{
    var questionText: String
    var answer:Bool
    
    init(text:String , correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
        
    }
    
    
}
