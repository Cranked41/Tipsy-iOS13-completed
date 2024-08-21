//
//  TipModel.swift
//  Tipsy
//
//  Created by Ali Rıza Çelik on 21.08.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

class TipModel {
    var tipType:String = "10%"
    var price:Float=0.0
    var totalPerson=0
    func getFeePerPerson(priceValue:Float,tipType:String,totalPerson:Int)-> Float{
        
         let result:Float =   switch(tipType){
        case "0%":
             priceValue/Float(totalPerson)
        case "10%":
             (priceValue*(110)/100)/Float(totalPerson)
        case "20%" :
            (priceValue*(120)/100)/Float(totalPerson)
     default:
             0.0
     }
         price=priceValue
        return result
    }
}
