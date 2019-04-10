//
//  User.swift
//  KNight
//
//  Created by Nhu Nguyen on 3/14/19.
//  Copyright © 2019 Nhu Nguyen. All rights reserved.
//

import UIKit

class User {
    
    //MARK: Properties
    var name: String
    var username: String
    var id: String
    var age: String?
    var height: String?
    var weight: String?
    var profileImage: UIImage?
    
    //MARK: Initialization
    init?(name: String, username: String, id: String, age: String?, height: String?, weight: String?, profileImage: UIImage?)
    {
        if (name.isEmpty || username.isEmpty || id.isEmpty)
        {
            return nil
        }
        
        self.name = name
        self.username = username
        self.id = id
        self.age = age
        self.height = height
        self.weight = weight
        self.profileImage = profileImage
    }
}
