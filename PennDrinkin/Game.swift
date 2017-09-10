//
//  Game.swift
//  PennDrinkin
//
//  Created by Raphaël Person on 09/09/2017.
//  Copyright © 2017 nonameboy. All rights reserved.
//

import Foundation
import UIKit

class Game: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    
    let actions : [String] = ["mlkhml", "mpj", "moihllk"]
    let drinkSentence = "Drink %number% sips"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        okButtonTapped()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func okButtonTapped() {
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))] as! String
        let number = Int(arc4random_uniform(6) + 2)
        drinkLabel.text = drinkSentence.replacingOccurrences(of: "%number%", with: String(number))
        actionLabel.text = actions[Int(arc4random_uniform(UInt32(actions.count)))] as! String
    }
}
