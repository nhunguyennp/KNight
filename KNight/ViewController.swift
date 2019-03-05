//
//  ViewController.swift
//  KNight
//
//  Created by Nhu Nguyen on 2/19/19.
//  Copyright © 2019 Nhu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,
                    UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        usernameTextField.delegate = self
        idTextField.delegate = self
        ageTextField.delegate = self
        heightTextField.delegate = self
        weightTextField.delegate = self
        
    }
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField
        {
        case nameTextField:
            nameTextField.text = textField.text
        case usernameTextField:
            usernameTextField.text = textField.text
        case idTextField:
            idTextField.text = textField.text
        case ageTextField:
            ageTextField.text = textField.text
        case heightTextField:
            heightTextField.text = textField.text
        case weightTextField:
            weightTextField.text = textField.text
        default:
            break
            
        }
    }
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        profileImageView.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
        let profilePickerController = UIImagePickerController()
        profilePickerController.sourceType = .photoLibrary
        profilePickerController.delegate = self
        present(profilePickerController, animated: true, completion: nil)
    }
}

