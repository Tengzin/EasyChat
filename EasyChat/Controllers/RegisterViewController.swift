//
//  RegisterViewController.swift
//  EasyChat
//  Created by Andrew Hu on 2020-03-26.
//  Copyright © 2020 Andrew Hu. All rights reserved.
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
