//
//  CustomCellMaster.swift
//  CustomizeTableViewCell
//
//  Created by techmaster on 2/8/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class CustomCellMaster: UITableViewCell {

    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet weak var labelNameFootBallClub: UILabel!
    @IBOutlet weak var labelStadium: UILabel!
    @IBOutlet weak var imageViewStarRating: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
