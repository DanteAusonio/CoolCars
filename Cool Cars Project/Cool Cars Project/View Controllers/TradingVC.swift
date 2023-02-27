//
//  HomeUIViewController.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/12/22.
//

import UIKit

class TradingVC: UIViewController {

    var user: User!
    var selectedVehicle: Vehicle?
    let raptor = Vehicle(Make: "Ford", Model: "Raptor", Year: "2012", MPG: "12", HP: "470", DisplayPic: UIImage(named: "Ford Raptor")!)
    let mustangApollo = Vehicle(Make: "Ford", Model: "Mustang Apollo", Year: "2015", MPG: "22", HP: "627", DisplayPic: UIImage(named: "Ford Mustang Apollo")!)
    let noVehicle = Vehicle(Make: "No", Model: "Vehicle", Year: "0", MPG: "0", HP: "0", DisplayPic: UIImage(named: "nothing-found")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if user == nil {
            user = User()
            user.ownedVehicle = noVehicle
        }
        
    }
    
    // Mustang Button
    @IBAction func Mustang(_ sender: Any) {
        selectedVehicle = mustangApollo
    }
    
    // Raptor Button
    @IBAction func Raptor(_ sender: Any) {
        selectedVehicle = raptor
    }
    
    // Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // To Vehicle Page
        if let VehiclePageVC = segue.destination as? VehiclePageVC {
            VehiclePageVC.user = user
            VehiclePageVC.selectedVehicle = selectedVehicle
            
        // To User's Vehicle
        } else if let YourVehicleVC = segue.destination as? YourVehicleVC {
            YourVehicleVC.user = user
        }
    }

}
