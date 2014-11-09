//
//  ViewController.swift
//  DogYearConverter
//
//  Created by Arthur Labisi Siloka on 9/11/14.
//  Copyright (c) 2014 MukuniDevelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertDogYearButtonPressed(sender: UIButton) {
        
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearLabel.text = "\(intFromOptional * 7)" + " Human Years"
        
        dogYearLabel.hidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
    }


}

