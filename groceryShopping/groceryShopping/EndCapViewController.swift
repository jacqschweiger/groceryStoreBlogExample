//
//  EndCapViewController.swift
//  groceryShopping
//
//  Created by Jacqueline Minneman on 10/16/16.
//  Copyright © 2016 Jacqueline Minneman. All rights reserved.
//

import UIKit

class EndCapViewController: UIViewController {

    @IBOutlet weak var endCapImage: UIImageView!
    
    @IBOutlet weak var endCapLabel: UILabel!
    
    var signageText = ""
    var cerealBox = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.endCapLabel.text = signageText
        self.endCapImage.image = cerealBox
        
    }

}
