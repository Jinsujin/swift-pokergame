//
//  PokerGame.swift
//  PokerGameApp
//
//  Created by jsj on 2022/02/24.
//

import Foundation

class PokerGame {
    private let stud: Stud
    private let personCount: Int
    
//    private let gameDealer: GameDealer
//    private let players: [Player]
    
    /// personCount: 딜러제외 1~4
    init(stud: Stud, personCount: Int) {
        self.stud = stud
        self.personCount = personCount
    }
}

enum Stud: Int {
    case five = 5
    case seven = 7
}
