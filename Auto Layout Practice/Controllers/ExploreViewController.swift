//
//  ExploreViewController.swift
//  Auto Layout Practice
//
//  Created by Yasin Shamrat on 12/24/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionViewA.delegate = self
        collectionViewB.dataSource = self
        
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewA{
            return 5
        }else {
            return 3
        }
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewA{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! SIngleCellCollectionCollectionViewCell
            return cell
            
        }else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotelsCell", for: indexPath) as! HotelsCollectionViewCell
            return cell
        }
        
       }

}
