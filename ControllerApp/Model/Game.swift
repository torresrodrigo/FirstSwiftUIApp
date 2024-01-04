//
//  Game.swift
//  BulleyesApp
//
//  Created by Rodrigo Torres on 24/12/2023.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int = abs(target - sliderValue)
        let bonus: Int = getBonusPoints(difference: difference)
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}

extension Game {
    
    private func getBonusPoints(difference: Int) -> Int {
        if difference == 0 {
            return 100
        } else if difference <= 2 {
            return 50
        } else {
            return 0
        }
    }
    
}
