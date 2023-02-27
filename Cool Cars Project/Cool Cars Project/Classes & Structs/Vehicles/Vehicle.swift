//
//  Vehicle.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/15/22.
//

import Foundation
import UIKit


struct Vehicle {
    
    let Make, Model, Year, MPG, HP, Name: String?
    let DisplayPic: UIImage?
    
    init(Make: String, Model: String, Year: String, MPG: String, HP: String, DisplayPic: UIImage) {
        self.Make = Make
        self.Model = Model
        self.Year = Year
        self.MPG = MPG
        self.HP = HP
        self.DisplayPic = DisplayPic
        self.Name = Make + " " + Model
    }
    
}
