//
//  SignUpViewController.swift
//  semana10-A
//
//  Created by mbtec22 on 6/3/21.
//  Copyright © 2021 Tecsup.com. All rights reserved.
//

import UIKit
import FirebaseAuth


class SignUpViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var userOrEmailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var guardar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onClickBackbtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
 
    @IBAction func signUpTapped(_ sender: Any) {
        if userOrEmailTextField.text?.isEmpty == true{
            print("no text in email field")
            
        }
        if passwordTextField.text?.isEmpty == true {
            print("No text in password field")
            return
        }
        signUp()
    }
    func signUp(){
        Auth.auth().createUser(withEmail: userOrEmailTextField.text!, password: passwordTextField.text!) { (AuthResult, error) in
            
                return
            
            }}    }
    
  
    
    
    


