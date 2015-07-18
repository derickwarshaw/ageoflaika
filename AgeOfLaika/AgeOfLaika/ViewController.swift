//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Derick Warshaw on 7/18/15.
//  Copyright (c) 2015 Derick Warshaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " " + " Human Years"
        
        enterHumanYearsTextField.resignFirstResponder()
    }
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let stringFromTextField = enterHumanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2 * 4)
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text="\(realDogYears)" + " Real Human Years"
        
        enterHumanYearsTextField.resignFirstResponder()
        
        
    }
}

