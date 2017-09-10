//
//  PlayerCell.swift
//  PennDrinkin
//
//  Created by Raphaël Person on 09/09/2017.
//  Copyright © 2017 nonameboy. All rights reserved.
//

import Foundation
import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var name: UITextField!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
