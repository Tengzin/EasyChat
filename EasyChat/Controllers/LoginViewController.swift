//
//  LoginViewController.swift
//  EasyChat
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailTextfield.text!, password:
            passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Successfully logged in")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
}
