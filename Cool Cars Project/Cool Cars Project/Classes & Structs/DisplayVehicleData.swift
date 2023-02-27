//
//  DisplayVehicleData.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/16/22.
//

import UIKit

class DisplayVehicleData: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        
        //Set Shadow
        self.layer.shadowOpacity = 1/2
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    

}
