//
//  registerViewController.swift
//  semana10-A
//
//  Created by mbtec22 on 6/16/21.
//  Copyright © 2021 Tecsup.com. All rights reserved.
//

import UIKit
import FirebaseAuth
class registerViewController: UIViewController {

  
    
    @IBOutlet weak var passwordtxt: UITextField!
    
   
    @IBOutlet weak var usertxt: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveUser(_ sender: Any) {
        
        let email = usertxt.text!
        let password = passwordtxt.text!
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
           
        }
        
    }
  
}
