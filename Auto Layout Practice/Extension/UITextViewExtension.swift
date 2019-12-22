//
//  UITextViewExtension.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setRightViewImage(image : UIImage, isSecure : Bool = false){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(UIImage(named: "eye"), for: .normal)
            button.setImage(UIImage(named: "cross"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(viewButton), for: .touchUpInside)
            rightView = button
        }else {
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func viewButton(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}
