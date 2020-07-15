//
//  GeneratedListViewController.swift
//  partnerPartyGenerator
//
//  Created by Grace Ohlsen on 7/14/20.
//  Copyright © 2020 Grace Ohlsen. All rights reserved.
//

import UIKit

class GeneratedListViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
      
    var teams = [String : String]()
      
    //    generateTeams(girls: femalePlayers, boys: malePlayers)
    // takes femalePlayers and malePlayers arrays from AddingViewController and generates teams from them
    // generateTeams from Generate.swift file
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "Click 'Generate Teams'"
        
        
    }
    
    
    let rvc = ReviewViewController()

     var femalePlayers = [String]()
     var malePlayers = [String]()

    
    @IBAction func generateTapped(_ sender: UIButton) {
        
        let teams = generateTeams(girls: femalePlayers , boys: malePlayers)
        
        var teamsString = ""
        
        for element in teams{
            
            teamsString += "\(element.key) : \(element.value) \n"
            }
            
        textView.text = teamsString
            
        }
        
        
        
    }
    
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


