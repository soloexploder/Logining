//
//  WelcomViewController.swift
//  Logining
//
//  Created by Даниил Хантуров on 31.03.2021.
//

import UIKit

class WelcomViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var welcomeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)"
    }
    
}
