//
//  ViewController.swift
//  camera&photos
//
//  Created by Erin Martin on 6/29/21.
//  Copyright © 2021 Erin Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    class viewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var imagePicker = UIImagePickerController()
        
        override func viewDidLoad(){
            super.viewDidLoad()
            imagePicker.delegate = self
        }
    
    
    @IBAction func takeSelfieTapped(_ sender: Any) {
    imagePicker.sourceType = .camera
    present(imagePicker, animated: true, completion: nil)
}
    @IBAction func photoLibraryTapped(_ sender: Any) {
    imagePicker.sourceType = .photoLibrary
    present(imagePicker, animated: true, completion: nil)
    }

    @IBOutlet var displayImage: UIImageView!

private func imagePickerController( picker:UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
    if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
        displayImage.image = selectedImage
    }
    imagePicker.dismiss(animated: true, completion: nil)
    }

    }
}

