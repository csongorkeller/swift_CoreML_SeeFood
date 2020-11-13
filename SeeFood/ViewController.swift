//
//  ViewController.swift
//  SeeFood
//
//  Created by Csongor Keller on 13/11/2020.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

   
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = pickedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
       
    }

    
    @IBAction func cameraClicked(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: false, completion: nil)
    }

}

