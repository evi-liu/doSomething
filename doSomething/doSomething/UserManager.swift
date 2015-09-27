//
//  UserManagement.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import Foundation
import UIKit

var userManager: UserManager = UserManager()

struct user{
    var id = ""
    var email = ""
    var password = ""
}

class UserManager: NSObject {
    var users = [user]()
    
    func addUser(email: String, password: String){
        //let uuid = NSUUID().UUIDString
        let uuid = NSUUID().UUIDString
        users.append(user(id: uuid, email: email, password: password))
    }
    
}

