//
//  contactViewController.swift
//  semana10-A
//
//  Created by mbtec22 on 6/20/21.
//  Copyright © 2021 Tecsup.com. All rights reserved.
//

import UIKit
import FirebaseAuth
class contactViewController: UIViewController {

    @IBOutlet weak var cerrarSesion: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    

    @IBAction func cerrarSesion(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    

}
