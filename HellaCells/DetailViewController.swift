//
//  DetailViewController.swift
//  HellaCells
//
//  Created by Bejan Fozdar on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var numLabel: UILabel!
    
    
    var detail: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numLabel.text = String(detail)
        
    }
    
    
    
    
    
}
    
    
    
