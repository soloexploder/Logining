//
//  AboutViewController.swift
//  Logining
//
//  Created by Даниил Хантуров on 04.04.2021.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutImage: UIImageView!
    @IBOutlet weak var aboutLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutImage.image = UIImage(named: user.person.image)
        title = user.person.fullname
        aboutLabel.text = user.person.someText
    }
    

    
}
