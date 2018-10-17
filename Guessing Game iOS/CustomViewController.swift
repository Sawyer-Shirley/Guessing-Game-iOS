//
//  CustomViewController.swift
//  Guessing Game iOS
//
//  Created by Sawyer Shirley on 10/16/18.
//  Copyright © 2018 Sawyer Shirley. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var customMax: UITextField!
    @IBOutlet weak var customMin: UITextField!
    @IBOutlet weak var customGuesses: UITextField!
    @IBOutlet weak var customPlayButton: UIButton!
    
    
    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "Custom", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let guessingGameViewController = segue.destination as?  GameViewController else
        {return}
        
        switch segue.identifier {
        case "Custom":
            guessingGameViewController.minimum = (Int(customMin.text!)!)
            guessingGameViewController.maximum = (Int(customMax.text!)!)
            guessingGameViewController.numberOfGuesses = (Int(customGuesses.text!)!)
            
        default:
            break
        }
    }
}

