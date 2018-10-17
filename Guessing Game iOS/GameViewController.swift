//
//  ViewController.swift
//  Guessing Game iOS
//
//  Created by Sawyer Shirley on 10/9/18.
//  Copyright © 2018 Sawyer Shirley. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var guessesRemainingLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var numberRangeLabel: UILabel!
    
    
    var numberOfGuesses = 5
    var numberOfGuessesTotal = 5
    var maximum = 100
    var minimum = 1
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        restartButton.isHidden = true
        randomNumber = Int.random(in: 1...maximum)
        numberRangeLabel.text = "Guess between \(minimum)-\(maximum)"
        numberOfGuesses = numberOfGuessesTotal
        guessesRemainingLabel.text = "You have \(numberOfGuesses) guesses"
        
    }

    @IBAction func guessButtonTapped(_ sender: Any) {
        let guess = Int(guessTextField.text!)!
        testGuess(guess)
    }
    
    func testGuess (_ guess: Int){
        //test guess against random number
        if guess == randomNumber {
            feedbackLabel.text = ("You guessed the number!")
            restartButton.isHidden = false
            guessButton.isHidden = true
        } else if guess < randomNumber {
            feedbackLabel.text = "Aim higher!" //Give user feedback on guess
            numberOfGuesses -= 1 //Remove a guess
            guessesRemainingLabel.text = "\(numberOfGuesses) guesses remaining"
        } else if guess > randomNumber {
            feedbackLabel.text = "Too High! Go down!"
            numberOfGuesses -= 1 //Remove a guess
            guessesRemainingLabel.text = "\(numberOfGuesses) guesses remaining" //Update number of guesses for user
        }
        if numberOfGuesses == 0 {
            guessesRemainingLabel.text = "You're out of guesses! The correct number was \(randomNumber)."
            restartButton.isHidden = false
            guessButton.isHidden = true
            feedbackLabel.isHidden = true
            
        }
        
        
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        var newRandomNumber = Int.random(in: 1...100)
        numberOfGuesses = numberOfGuessesTotal
        randomNumber = newRandomNumber
        restartButton.isHidden = true
        guessButton.isHidden = false
        feedbackLabel.isHidden = false
        guessesRemainingLabel.text = "\(numberOfGuesses) guesses remaining"
        feedbackLabel.text = "Make a guess!"
        
    }
    
}

