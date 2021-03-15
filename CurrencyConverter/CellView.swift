//
//  CellView.swift
//  CurrencyConverter
//
//  Created by Sherif Musa on 02.03.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import UIKit

class CellView: UITableViewCell {
    
    @IBOutlet weak var countryImageView: UIImageView!
    @IBOutlet weak var convertAmountLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    //Configures the cell by getting the Cell Data and assigning it to a UI Item
    func configureCell (cell: CellDataObject){
        countryImageView.image = UIImage(named: cell.countryImagePath)
        convertAmountLabel.text = String(cell.convertAmount)
        countryLabel.text = cell.country
    }
}



