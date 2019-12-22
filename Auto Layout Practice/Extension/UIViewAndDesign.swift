//
//  UIViewAndDesign.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/22/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class CustomView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiusAndShawdow()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShawdow()
    }
    func setRadiusAndShawdow() {
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 0)
        layer.shadowColor = UIColor(named: "SecondaryTintColor")?.cgColor
    }
}
