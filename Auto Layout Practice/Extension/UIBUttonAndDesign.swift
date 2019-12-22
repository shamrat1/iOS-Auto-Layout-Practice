//
//  UIBUttonAndDesign.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

extension UIButton {
    func designerButton(borderWidth: CGFloat, borderColor: UIColor){
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
