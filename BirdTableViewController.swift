//
//  BirdTableViewController.swift
//  CollectionAndTableView
//
//  Created by Paige Plander on 3/9/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class BirdTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // not the best style to have a repeated array,
    // but keeps the demo simple to understand
    var birds = ["bird0", "bird1", "bird2", "bird3", "bird4", "bird5", "bird6", "bird7", "bird8", "bird9"]
    
    @IBOutlet weak var birdTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birdTableView.delegate = self
        birdTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let birdCell = tableView.dequeueReusableCell(withIdentifier: "birdCell") as? BirdTableViewCell {
            birdCell.birdImageView.image = UIImage(named: birds[indexPath.row])
            birdCell.birdNameLabel.text = birds[indexPath.row]
            return birdCell
        }
        
        else {
            print("Error creating bird table view cell")
            return UITableViewCell()
        }
    }

   
}
