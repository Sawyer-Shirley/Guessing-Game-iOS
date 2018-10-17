//
//  MenuViewController.swift
//  Guessing Game iOS
//
//  Created by Sawyer Shirley on 10/15/18.
//  Copyright © 2018 Sawyer Shirley. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let guessingGameViewControler = segue.destination as? GameViewController else { return }
        
        switch segue.identifier {
        case "Easy":
            //min 1
            //max 50
            //# guesses 10
            guessingGameViewControler.maximum = 50
            guessingGameViewControler.minimum = 1
            guessingGameViewControler.numberOfGuessesTotal = 10
            
        case "Medium":
            // min 1
            // max 150
            // # guesses 7
            guessingGameViewControler.maximum = 150
            guessingGameViewControler.minimum = 1
            guessingGameViewControler.numberOfGuessesTotal = 7
            
        case "Hard":
            // min 1
            // max 500
            // # guesses 5
            guessingGameViewControler.maximum = 500
            guessingGameViewControler.minimum = 1
            guessingGameViewControler.numberOfGuessesTotal = 5
            
        default:
            break
        }
    }
}
