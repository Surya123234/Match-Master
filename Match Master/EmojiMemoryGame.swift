//
//  EmojiMemoryGame.swift (the VIEW MODEL)
//  Match Master
//
//  Created by Surya Sendhilraj on 2022-02-27.
//

import SwiftUI


class EmojiMemoryGame {

    // static means that it is a type var/func --> exists only once in the entire app, and it is global. However, an instance var/func exists once for each instance of the type.
    
    // type variable
    static let emojis = ["🚀", "✈️", "🚗", "🚢", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🦼", "🛴", "🚲", "🛵", "🏍", "🛺", "🚂"]

    // type function
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
