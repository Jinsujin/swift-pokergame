//
//  TestCardDeck.swift
//  PokerGameApp
//
//  Created by jsj on 2022/02/23.
//

import Foundation

class TestCardDeck {
    private let cardDeck: CardDeck!
    
    init() {
        self.cardDeck = CardDeck()
    }
    
    func countWhenInit() {
        let count = cardDeck.count()
        let expect = 52
        if count != expect {
            print("TestCardDeck::countWhenInit() Fail-초기화했을때 카드 갯수가 예상값(\(expect)가 아닙니다")
            return
        }
        print("TestCardDeck::countWhenInit() Success-\(expect)개로 초기화 완료")
    }
    
    func count(expect: Int) {
        let count = cardDeck.count()
        if count != expect {
            print("TestCardDeck::count() Fail-카드 갯수가 예상값(\(expect)가 아닙니다")
            return
        }
        print("TestCardDeck::count() Success")
    }
    
    func removeOne() {
        let removedCard = cardDeck.removeOne()
        let currentCardCount = cardDeck.count()
        
        guard let card = removedCard else {
            print("TestCardDeck::removeOne()-카드를 삭제하지 못했습니다. 현재 카드갯수 \(currentCardCount)개.")
            return
        }
        print("TestCardDeck::removeOne()", card, "\(currentCardCount)개의 카드가 남았습니다.")
        
    }
}