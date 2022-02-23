//
//  CardDeck.swift
//  PokerGameApp
//
//  Created by jsj on 2022/02/23.
//

import Foundation

class CardDeck {
    private var cards = [Card]()
    
    init() {
        self.cards = Card.all()
    }
    
    func count() -> Int {
        return self.cards.count
    }
    
    func removeOne() -> Card? {
        if self.cards.isEmpty {
            return nil
        }
        return self.cards.removeLast()
    }
}