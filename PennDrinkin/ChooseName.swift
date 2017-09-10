//
//  ChooseName.swift
//  PennDrinkin
//
//  Created by Raphaël Person on 09/09/2017.
//  Copyright © 2017 nonameboy. All rights reserved.
//

import Foundation
import UIKit

var playersNumber = 2
var names : NSMutableArray = []

class ChooseName: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var namesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesTableView.delegate = self
        namesTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersNumber
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath as IndexPath) as! PlayerCell
        return cell
    }
    
    @IBAction func launchButtonTapped() {
        let cells = namesTableView.visibleCells as! Array<PlayerCell>
        
        for cell in cells {
             names.add(cell.name.text)
        }
        print(names)
    }
    
    
}
