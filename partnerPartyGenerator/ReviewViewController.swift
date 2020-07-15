//
//  ReviewViewController.swift
//  partnerPartyGenerator
//
//  Created by Grace Ohlsen on 7/14/20.
//  Copyright © 2020 Grace Ohlsen. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet weak var girlsReviewText: UITextView!
    @IBOutlet weak var boysReviewText: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var girlsString = ""
        
        for name in self.femalePlayers{
            girlsString += "\(name) \n"
        }
        
        var boysString = ""
        
        for name in self.malePlayers{
            boysString += "\(name) \n"
        }
        
        girlsReviewText.text = girlsString
        
        boysReviewText.text = boysString
        
        
    }
    
    let avc = AddingViewController()
    
    var femalePlayers = [String]()
    var malePlayers = [String]()
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGeneratedList" {
            let vc = segue.destination as? GeneratedListViewController
            
            vc?.femalePlayers = self.femalePlayers
            
            vc?.malePlayers = self.malePlayers
            
        }
        if segue.identifier == "goBackToAdding" {
            let vc = segue.destination as? AddingViewController
            
            vc?.femalePlayers = self.femalePlayers
            
            vc?.malePlayers = self.malePlayers
            
            
            
        }
        
        
        
        
        }
    }


