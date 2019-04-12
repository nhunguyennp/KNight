//
//  EditProfileViewController.swift
//  KNight
//
//  Created by Nhu Nguyen on 3/7/19.
//  Copyright © 2019 Nhu Nguyen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var connectToKnightButton: UIButton!
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImageView.layer.cornerRadius = profileImageView.frame.width/2
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.borderColor = UIColor.gray.cgColor
        profileImageView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    //MARK: Actions
    @IBAction func unwindToProfile(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? EditProfileViewController, let user = sourceViewController.user
        {
            profileImageView.image = user.profileImage
            nameLabel.text = user.name
            usernameLabel.text = user.username
            idLabel.text = "ID: " + user.id
            ageLabel.text = "Age: \(user.age ?? "" )"
            heightLabel.text = "Height: \(user.height ?? "")"
            weightLabel.text = "Weight: \(user.weight ?? "")"
        }
        if let sourceViewController = sender.source as? BLECentralViewController
        {
            let isConnected = sourceViewController.isConnected
            print("is connected from Profile page: \(isConnected)")
            if (isConnected)
            {
                connectToKnightButton.setTitle("Connected to KNight", for: UIControl.State.normal)
            }
        }
        
    }
    

}
