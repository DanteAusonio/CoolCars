//
//  WindowTemplate.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 11/15/22.
//

import UIKit

class WindowTemplate: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.view.layer.cornerRadius = 10
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    


}
