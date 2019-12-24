//
//  FlightResultViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/24/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit
class ResultCell: UITableViewCell {

    @IBOutlet weak var cellRightView: UIView!
    
}
class FlightResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell") as! ResultCell
        
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
        return cell
    }

}
