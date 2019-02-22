//
//  ViewController.swift
//  Hello User
//
//  Created by student14 on 1/25/19.
//  Copyright © 2019 student14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    //get the current hour
    let hour = Calendar.current.component(.hour, from: Date())
    var greeting = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //this func determines the the appropriate greeting based on the time of the day and sets the greeting label text with the appropriate greeting and user name
    @IBAction func greetButtonTouched(_ sender: UIButton) {
        
        print(hour)
 
        switch hour {
        case 0...11:
            greeting = "Good morning, "
        case 12...17:
            greeting = "Good afternoon, "
        case 18...22:
            greeting = "Good evening, "
        default:
            greeting = "Good night, "
        }
        greetingLabel.text = greeting + nameTextField.text! + "!"
//        greetingLabel.text = "Hello, " + nameTextField.text! + "!"
    }
    
}

