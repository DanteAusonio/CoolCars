//
//  YourVehiclePage.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/16/22.
//

import UIKit

class YourVehicleVC: UIViewController {

    var user: User!
    @IBOutlet weak var VehicleDisplay: UIImageView!
    @IBOutlet weak var DisplayName: UILabel!
    @IBOutlet weak var YearTxt: UITextField!
    @IBOutlet weak var mpgTxt: UITextField!
    @IBOutlet weak var hpTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        VehicleDisplay.image = user.ownedVehicle.DisplayPic
        DisplayName.text = user.ownedVehicle.Name
        YearTxt.text = user.ownedVehicle.Year
        mpgTxt.text = user.ownedVehicle.MPG
        hpTxt.text = user.ownedVehicle.HP
        
    }
    
    
    
    // Pass Data Between Pages
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let TradingVC = segue.destination as? TradingVC {
            TradingVC.user = user
        } else if let VehiclePageVC = segue.destination as? VehiclePageVC {
            VehiclePageVC.user = user
        }
    }
    
    
    
    
    

}
