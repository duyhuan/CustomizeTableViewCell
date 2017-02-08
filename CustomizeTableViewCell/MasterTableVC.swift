//
//  MasterTableVC.swift
//  CustomizeTableViewCell
//
//  Created by techmaster on 2/8/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    
    var arrayData: [DataItem]!
    var detailVC: DetailVC!

    override func viewDidLoad() {
        super.viewDidLoad()
        let item1: DataItem = DataItem.init(imgViewLogo: "MU.png", nameFC: "Manchester United", nameStd: "Old Trafford", imgStar: 5)
        let item2: DataItem = DataItem.init(imgViewLogo: "Chelsea.png", nameFC: "Chelsea", nameStd: "Stamford Bridge", imgStar: 4)
        let item3: DataItem = DataItem.init(imgViewLogo: "Arsenal.png", nameFC: "Arsenal", nameStd: "Emirates", imgStar: 4)
        let item4: DataItem = DataItem.init(imgViewLogo: "MC.png", nameFC: "Manchester City", nameStd: "Etihad", imgStar: 3)
        let item5: DataItem = DataItem.init(imgViewLogo: "Liverpool.png", nameFC: "Liverpool", nameStd: "Anfield", imgStar: 2)
        
        arrayData = [item1, item2, item3, item4, item5]
        
        self.tableView.register(UINib(nibName: "CustomCellMaster", bundle: nil), forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCellMaster! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCellMaster

        // Configure the cell...
        let item: DataItem = arrayData[indexPath.row]
        
        cell.imageViewLogo.image = item.imageViewLogo
        cell.labelNameFootBallClub.text = item.nameFootballClub
        cell.labelStadium.text = item.nameStadium
        cell.imageViewStarRating.image = item.imageStarRating

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        }
        let item: DataItem = arrayData[indexPath.row]
        detailVC.stringTitle = item.nameStadium
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
