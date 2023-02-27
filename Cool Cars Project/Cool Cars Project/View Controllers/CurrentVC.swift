//
//  CurrentVC.swift
//  Cool Cars Project
//
//  Created by Dante Ausonio on 12/29/22.
//

import UIKit

class CurrentVC: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var exampleVar: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        if segue.identifier == "NextSegue" {
            let destination = segue.destination as? NextVC
            destination!.someVariable.text = "Hello"
        }
         */
    }
    

}
