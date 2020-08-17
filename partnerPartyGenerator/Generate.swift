//
//  Generate.swift
//  partnerPartyGenerator
//
//  Created by Grace Ohlsen on 7/14/20.
//  Copyright © 2020 Grace Ohlsen. All rights reserved.
//

import Foundation

func getfreshThemes() -> [String]{
    let themes = [
          "Beach 🏖️",
          "Western 🤠",
          "USA 🇺🇸",
          "Neon 💛",
          "Monochromatic 🍎❤️",
          "Space Cowboy/girl 💫",
          "Camo 🦌",
          "TV Pairing 📺",
          "Jerseys ⛹️",
          "Men In Black 🕴️",
          "Outerbanks 🌅",
          "Throwback 🕰️",
          "Hawaii 🌺",
          "Greek 🎭",
          "Pajamas 💤",
          "Athlete & Mathlete 🥵🤓",
          "Fiesta 🇲🇽",
          "Inmates ⛓️",
          "Construction Crew 🚧" ,
          "Royalty 👑",
          "Little White Lies T's ❔",
          "Euphoria ✨",
          "Golf Bros & Tennis Hoes 🏌️‍♂️🎾",
          "Reverse Genders 🏳️‍⚧️"
      ]
    return themes
}


func generateTeams(girls: [String], boys: [String]) -> [String : String] {
    
    var themesAvailable = getfreshThemes()
//

//
    var dominantSex = [String]()
    var inferiorSex = [String]()
//
    if(boys.count >= girls.count){
        dominantSex = boys
        inferiorSex = girls
    }else{
        dominantSex = girls
        inferiorSex = boys
    }
//
    var teams = [String : String]()
//
    if(inferiorSex.count > 0){
        for inferiorBeing in inferiorSex{

            let numOne = Int.random(in: 0...themesAvailable.count - 1)
            let numTwo = Int.random(in: 0...dominantSex.count - 1)

            teams.updateValue("\(themesAvailable[numOne])", forKey: "\(inferiorBeing) & \(dominantSex[numTwo])")


            themesAvailable.remove(at: numOne)
            dominantSex.remove(at: numTwo)

        }
    }
    
    // this works
     while(dominantSex.count > 1){
    //
            teams.updateValue("\(themesAvailable[0])", forKey: "\(dominantSex[0]) & \(dominantSex[1])")
    //
            themesAvailable.remove(at: 0)
            dominantSex.remove(at: 0)
            dominantSex.remove(at: 0)
          }
    

    if (dominantSex.count % 2 == 1){

        teams.updateValue("Referee 🤡", forKey: "\(dominantSex[0])")

        dominantSex.remove(at: 0)

    }
    
    
    // this works



//
//
       
//
//

    

    return teams
}

