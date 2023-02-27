//
//  CustomView.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/15/22.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        //Set Border
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.shadowColor = UIColor.black.cgColor
        self.backgroundColor = UIColor.lightGray
        
        //Set Shadow
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 5
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }

}
