//
//  TicketViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/23/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var roundBtnOutlet: UIButton!
    @IBOutlet weak var tripButtonContainerView: UIView!
    @IBOutlet weak var multiBtnOutlet: UIButton!
    @IBOutlet weak var oneWayBtnOutlet: UIButton!
    
    @IBOutlet weak var searchBtnOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tripButtonContainerView.designerViewWithRoundBorder(borderWidth: 1, borderColor: UIColor(named: "SecondaryTintColor")!)
        // Do any additional setup after loading the view.
        roundBtnOutlet.designerButton(borderWidth: 0, borderColor: .clear)
        multiBtnOutlet.designerButton(borderWidth: 0, borderColor: .clear)
        oneWayBtnOutlet.designerButton(borderWidth: 0, borderColor: .clear)
        searchBtnOutlet.designerButton(borderWidth: 1, borderColor: UIColor(named: "SecondaryTintColor")!)
    }

    @IBAction func oneWayButtonAction(_ sender: Any) {
        changeButtonColor(oneWayBtnColor: UIColor(named: "TintColor")!,oneWayTxtColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    }
    @IBAction func multiButtonAction(_ sender: Any) {
        changeButtonColor(multiBtnColor: UIColor(named: "TintColor")!,multiTxtColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    }
    @IBAction func roundButtonAction(_ sender: Any) {
        changeButtonColor(roundBtnColor: UIColor(named: "TintColor")!,roundTxtColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    }
    
    func changeButtonColor(roundBtnColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),oneWayBtnColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),multiBtnColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),roundTxtColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),oneWayTxtColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),multiTxtColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)){
        
        roundBtnOutlet.backgroundColor = roundBtnColor
        multiBtnOutlet.backgroundColor = multiBtnColor
        oneWayBtnOutlet.backgroundColor = oneWayBtnColor
        
        roundBtnOutlet.setTitleColor(roundTxtColor, for: .normal)
        multiBtnOutlet.setTitleColor(multiTxtColor, for: .normal)
        oneWayBtnOutlet.setTitleColor(oneWayTxtColor, for: .normal)
    }
}
