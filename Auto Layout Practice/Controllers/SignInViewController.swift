//
//  SignInViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtMail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtMail.setRightViewImage(image: #imageLiteral(resourceName: "mail"))
        txtPassword.setRightViewImage(image: #imageLiteral(resourceName: "eye"),isSecure: true)
    }
    

    @IBAction func SignIn(_ sender: Any) {
        UserDefaults.standard.set("loggedin", forKey: "accessToken")
        changeRoot()
    }
    

}
