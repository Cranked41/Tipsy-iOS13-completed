//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var totalPriceTextField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var twentyPercentbutton: UIButton!
    var tipModel:TipModel = TipModel()
    var splitCount:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipModel.totalPerson=Int(splitLabel.text ?? "") ?? 0
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToTipResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultViewController
        tipModel.price = Float(totalPriceTextField.text!) ?? 0.0
        destination.tipModel=tipModel
        print(sender)
    }
    @IBAction func tipPressed(_ sender: UIButton) {
       print( sender.titleLabel)
        let tipType:String = (sender.titleLabel?.text)!
        
        zeroPercentButton.isSelected=zeroPercentButton.titleLabel?.text == tipType
        tenPercentButton.isSelected = tenPercentButton.titleLabel?.text == tipType
        twentyPercentbutton.isSelected = twentyPercentbutton.titleLabel?.text == tipType
//        switch tipType {
//        case "0%":
//            zeroPercentButton.isSelected=true
//            tenPercentButton.tintColor = UIColor.systemBackground
//            twentyPercentbutton.tintColor = UIColor.systemBackground
//        case "10%":
//            zeroPercentButton.tintColor=UIColor.systemBackground
//            tenPercentButton.tintColor = UIColor.systemGreen
//            twentyPercentbutton.tintColor = UIColor.systemBackground
//        case "20%":
//            zeroPercentButton.tintColor=UIColor.systemBackground
//            tenPercentButton.tintColor = UIColor.systemBackground
//            twentyPercentbutton.tintColor = UIColor.systemGreen
//            
            
            
                
//        default:
//            print("")
//        
//        }
        tipModel.tipType=tipType
    
        print(tipType)
    }
    @IBAction func splitChanged(_ sender: UIStepper) {
        let splitValue = Int(sender.value)
        print(splitValue)
        tipModel.totalPerson = splitValue
        splitLabel.text = String(splitValue)
        print(splitValue)
    }
    

}

