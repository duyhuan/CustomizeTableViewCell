//
//  DataItem.swift
//  CustomizeTableViewCell
//
//  Created by techmaster on 2/8/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class DataItem {
    var imageViewLogo: UIImage!
    var nameFootballClub: String!
    var nameStadium: String!
    var imageStarRating: UIImage!
    
    init(imgViewLogo: String, nameFC: String, nameStd: String, imgStar: Int) {
        self.imageViewLogo = UIImage(named: imgViewLogo)
        self.nameFootballClub = nameFC
        self.nameStadium = nameStd
        self.imageStarRating = UIImage(named: "\(imgStar)stars.png")
    }
}
