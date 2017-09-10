//
//  ChooseNumber.swift
//  PennDrinkin
//
//  Created by Raphaël Person on 09/09/2017.
//  Copyright © 2017 nonameboy. All rights reserved.
//

import Foundation
import UIKit

class ChooseNumber: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var numberPicker: UIPickerView!
    let numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberPicker.delegate = self
        numberPicker.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(numbers[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        playersNumber = numbers[row]
    }
    
    
}

