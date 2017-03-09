//
//  ViewController.swift
//  CollectionAndTableView
//
//  Created by Paige Plander on 3/9/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class BirdCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var birdCollectionView: UICollectionView!
    
    var birds = ["bird0", "bird1", "bird2", "bird3", "bird4", "bird5", "bird6", "bird7", "bird8", "bird9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        birdCollectionView.delegate = self
        birdCollectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let birdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "birdCell", for: indexPath) as? BirdCollectionViewCell {
            birdCell.birdImageView.image = UIImage(named: birds[indexPath.item])
            birdCell.birdNameLabel.text = birds[indexPath.item]
            
            /* UI modifications (not required). These simply make the
             corners of the cell rounded, instead of squared off */
            birdCell.layer.cornerRadius = 5
            birdCell.contentView.layer.cornerRadius = 5
            birdCell.contentView.layer.masksToBounds = true
            
            return birdCell
        }
        
        // If cannot cast, just return a dummy cell
        print("Error casting cell as a Bird Cell")
        return UICollectionViewCell()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return birds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let birdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "birdCell", for: indexPath) as? BirdCollectionViewCell {
            // setting the sender isn't really important for this example, 
            // since we don't care which cell the user picked, but added it anyways
            performSegue(withIdentifier: "collectionToTable", sender: birdCell)
        }
        
    }
    


}

