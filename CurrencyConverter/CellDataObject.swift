//
//  CellDataObject.swift
//  CurrencyConverter
//
//  Created by Sherif Musa on 02.03.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import Foundation

//Class which holds the data for the cell object
class CellDataObject {
    var countryImagePath: String
    var country: String
    var convertAmount: Double
    
    init() {
        self.countryImagePath = ""
        self.country = ""
        self.convertAmount = 0
    }
    init(path: String, country: String, amount: Double) {
        self.countryImagePath = path
        self.country = country
        self.convertAmount = amount
    }
}



