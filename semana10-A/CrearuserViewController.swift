//
//  CrearuserViewController.swift
//  semana10-A
//
//  Created by mbtec22 on 6/19/21.
//  Copyright © 2021 Tecsup.com. All rights reserved.
//

import UIKit
import FirebaseAuth

class CrearuserViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var usertxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStyle()
        
    }
    func setUpStyle(){
        button.layer.cornerRadius = 6.0
        usertxt.text = "karoline@gmail.com"
        passwordtxt.text = "karoline"
    }
    
    @IBAction func crear(_ sender: Any) {
        
        let email = usertxt.text!
        let password = passwordtxt.text!
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            // ...
        }
            // ...
        }
            
        }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


