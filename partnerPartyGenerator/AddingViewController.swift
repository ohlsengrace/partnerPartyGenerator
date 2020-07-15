//
//  AddingViewController.swift
//  partnerPartyGenerator
//
//  Created by Grace Ohlsen on 7/14/20.
//  Copyright © 2020 Grace Ohlsen. All rights reserved.
//

import UIKit

class AddingViewController: UIViewController {

    @IBOutlet weak var newGirlField: UITextField!
    @IBOutlet weak var newBoyField: UITextField!
    @IBOutlet weak var lastEntryText: UILabel!
    
    var femalePlayers = [String]()
    var malePlayers = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addGirl(_ sender: UIButton) {
        
        
        let newGirl = newGirlField.text!
        femalePlayers.append(newGirl)
        newGirlField.text = ""

        lastEntryText.text = femalePlayers[femalePlayers.count - 1]
    }
    @IBAction func addBoy(_ sender: UIButton) {
        
        let newBoy: String = newBoyField.text!
        malePlayers.append(newBoy)
        newBoyField.text = ""
        
        lastEntryText.text = malePlayers[malePlayers.count - 1]
        
    }
    
    
    
    
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToReview" {
            let vc = segue.destination as? ReviewViewController
            
            vc?.femalePlayers = self.femalePlayers
            
            vc?.malePlayers = self.malePlayers
            
            
            
        }
    }
    

}
