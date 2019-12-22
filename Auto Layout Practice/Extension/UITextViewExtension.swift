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
            button.setImage(#imageLiteral(resourceName: "eye"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "cross"), for: .selected)
        }else {
            rightView = imageView
        }
        rightViewMode = .always
    }
}
