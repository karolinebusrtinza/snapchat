//
//  imagenViewController.swift
//  semana10-A
//
//  Created by mbtec22 on 6/19/21.
//  Copyright © 2021 Tecsup.com. All rights reserved.
//

import UIKit
import FirebaseStorage

class imagenViewController: UIViewController {

    @IBOutlet weak var nameImageTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImagePicker()

    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    var imagePicker = UIImagePickerController()
    
    func setUpImagePicker(){
        imagePicker.delegate = self
    }
    

    @IBAction func onClickOpenGallery(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func onClickSave(_ sender: Any) {
        let imageData = imageView.image?.pngData()!
        let storageReference = Storage.storage()
        let imagenFolder = storageReference.reference().child(nameImageTxt.text!)
        
        imagenFolder.putData(imageData!, metadata: nil){ (metadata, error) in
            imagenFolder.downloadURL{ (url, error) in
                print("URL")
                guard let url = url else { return}
                print(url.absoluteString)
                print(url.absoluteURL)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
extension imagenViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
            imageView.image = image
            imagePicker.dismiss(animated: true, completion: nil)
    }
    
}
