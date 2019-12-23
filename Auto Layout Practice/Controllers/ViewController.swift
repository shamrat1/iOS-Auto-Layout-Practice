//
//  ViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInButtonOutlet: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signInButtonOutlet.designerButton(borderWidth: 1, borderColor: UIColor(named: "SecondaryTintColor")!)
    }
    @IBAction func SignUpButton(_ sender: Any) {
        
    }
    
    @IBAction func SignInButton(_ sender: UIButton) {
        
    }
    
}

