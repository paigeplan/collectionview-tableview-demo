//
//  BirdTableViewCell.swift
//  CollectionAndTableView
//
//  Created by Paige Plander on 3/9/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit

class BirdTableViewCell: UITableViewCell {

    @IBOutlet weak var birdImageView: UIImageView!
    @IBOutlet weak var birdNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
