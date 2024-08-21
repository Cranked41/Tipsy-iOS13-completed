//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Ali Rıza Çelik on 21.08.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var tipDescriptionLabel: UILabel!
    @IBOutlet weak var feePerPriceLabel: UILabel!
    var tipCalculatorBrain = TipCalculatorBrain()
    var tipModel:TipModel = TipModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        tipDescriptionLabel.text = tipCalculatorBrain.getDescription(tipModel: tipModel)
        feePerPriceLabel.text = "\(tipCalculatorBrain.getFeePerPrice(tipModel: tipModel))"
        
    }
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
   

}
