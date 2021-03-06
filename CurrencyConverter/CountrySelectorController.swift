//
//  CountrySelectorController.swift
//  CurrencyConverter
//
//  Created by Sherif Musa on 02.03.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import Foundation
import UIKit

class CountrySelectorController: UIPickerView, UIPickerViewDelegate, UIPickerViewDataSource {
    var countries = [String : String]()
    var pickedCountry = String()
    var keys = [String]()
    var values = [String]()
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return keys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return values[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickedCountry = keys[row]
    }
}

