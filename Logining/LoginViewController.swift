//
//  LoginViewController.swift
//  Logining
//
//  Created by Даниил Хантуров on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let name = "User"
    private let password = "qwerty"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomViewController else {return }
        welcomeVC.userName = name
    }
    
    @IBAction func loginTapped() {
        if userTF.text != name || passwordTF.text != password {
            showAlert(with: "Oops!",
                      and: "Username or password is wrong",
                      textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "showWelcomeVc", sender: nil)
    }
    
  
    @IBAction func getUserPass(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Oops!", and: "Your name is \(name) 😉")
        : showAlert(with: "Oops!", and: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title:String, and message:String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginTapped()
        }
        return true
    }
}

