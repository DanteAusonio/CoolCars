//
//  VehiclePageVC.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/16/22.
//

import UIKit

class VehiclePageVC: UIViewController {
        
    var user: User!
    var selectedVehicle: Vehicle!
    @IBOutlet weak var DisplayCarImage: UIImageView!
    @IBOutlet weak var DisplayName: UILabel!
    @IBOutlet weak var YearTxt: UITextField!
    @IBOutlet weak var mpgTxt: UITextField!
    @IBOutlet weak var hpTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayCarImage.image = selectedVehicle.DisplayPic
        DisplayName.text = selectedVehicle.Name
        YearTxt.text = selectedVehicle.Year
        mpgTxt.text = selectedVehicle.MPG
        hpTxt.text = selectedVehicle.HP
        
        print("hello")
    }
    
    
    
    

    
    
 
    // Pass Infor for each Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // To Available Trades Page
        if let TradingVC = segue.destination as? TradingVC {
            TradingVC.user = user
        }
        // To Your Vehicle Page
        if let YourVehicleVC = segue.destination as? YourVehicleVC {
            YourVehicleVC.user = user
        }
    }
    
    
    // Pushing Trade Btn Changes User's Vehicle
    @IBAction func TradeBtn(_ sender: Any) {
            user.ownedVehicle = selectedVehicle
            user.ownedVehicle = selectedVehicle
    }
    
    
    
    
    
    
    

}
