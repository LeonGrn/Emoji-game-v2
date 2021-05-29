//
//  Player.swift
//  Emoji game-v2
//
//  Created by Leon Grinshpun on 29/05/2021.
//

import Foundation
class Player : Codable{
    var playerName:String = ""
    var score: Int = 0
    var gameLocation:Location = Location()
    var gameDate:String = ""
    
    init() {
        
    }
    
    init (score:Int, playerName:String, gameLocation:Location){
        self.score = score
        self.playerName = playerName
        self.gameLocation = gameLocation
        let currentDate = Date()
        let formatterDate = DateFormatter()
        formatterDate.dateStyle = .long
        formatterDate.timeStyle = .short
        formatterDate.locale = .current
        self.gameDate = formatterDate.string(from: currentDate)
    }
}
