//
//  ViewController.swift
//  IsItPrime
//
//  Created by Osagie Omonzokpia on 7/12/17.
//  Copyright © 2017 Dreammesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkNumberBtn(_ sender: Any) {
        let number = Int(numberField.text!)
        
        if let checkNumber = number {
            if checkNumber < 1 {
                resultLabel.text = "Please enter a positive whole number"
            } else {
                if doIsPrime(number: checkNumber) {
                    resultLabel.text = "\(checkNumber) is a prime!"
                } else {
                    resultLabel.text = "\(checkNumber) is not a prime!"
                }

            }
        } else {
            resultLabel.text = "Please enter a valid whole number"
        }
    }
    
    func doIsPrime(number:Int) -> Bool {
        if number == 1 {
            return false
        }
        
        var i = 2
        
        while i < number {
            if number % i == 0 {
                return false
            }
            
            i += 1
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

