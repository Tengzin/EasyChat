//
//  RegisterViewController.swift
//  EasyChat
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("Successfully registered")
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
}
