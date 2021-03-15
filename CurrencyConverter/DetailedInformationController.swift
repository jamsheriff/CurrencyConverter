//
//  DetailedInformationController.swift
//  CurrencyConverter
//
//  Created by Sherif Musa on 02.03.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import Foundation
import UIKit

class DetailedInformationController: UIViewController{
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryRate: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    
    var selectedCell = CellDataObject()

    
    override func viewDidLoad(){
        super.viewDidLoad()
        //Update the values of the UI Elements
        countryLabel.text = selectedCell.country
        countryRate.text = String(selectedCell.convertAmount)
        countryImage.image = UIImage(named: selectedCell.countryImagePath)
    }
}

