//
//  SignUpViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPassword.setRightViewImage(image: UIImage(named: "eye")!, isSecure: true)
        txtName.setRightViewImage(image: #imageLiteral(resourceName: "person"))
        txtMail.setRightViewImage(image: #imageLiteral(resourceName: "mail"))
       
    }
    

}
