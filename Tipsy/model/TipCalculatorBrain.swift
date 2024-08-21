//
//  TipCalculatorBrain.swift
//  Tipsy
//
//  Created by Ali Rıza Çelik on 21.08.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation


struct TipCalculatorBrain {
    
    func getDescription(tipModel:TipModel)->String{
        return " Split between \(tipModel.totalPerson) people, with \(tipModel.tipType) tip."
    }
    
    func getFeePerPrice(tipModel:TipModel)->Float{
        return tipModel.getFeePerPerson(priceValue: tipModel.price, tipType: tipModel.tipType, totalPerson: tipModel.totalPerson)
    }
}
