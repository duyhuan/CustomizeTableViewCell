//
//  DetailVC.swift
//  CustomizeTableViewCell
//
//  Created by techmaster on 2/8/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var stringTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.title = stringTitle
        self.imageView.image = UIImage(named: stringTitle + ".jpg")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
