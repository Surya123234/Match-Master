//
//  ContentView.swift
//  Match Master
//
//  Created by Surya Sendhilraj on 2022-01-14.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚀", "✈️", "🚗", "🚢", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🦼", "🛴", "🚲", "🛵", "🏍", "🛺", "🚂"]
    
    @State var emojiCount = 24
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle).foregroundColor(.black)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            //Spacer()
            themeSelection
        }
        .padding(.horizontal)
    }
    
    var themeSelection: some View {
        HStack {
            Button {
                emojis = ["🚀", "✈️", "🚗", "🚢", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🦼", "🛴", "🚲", "🛵", "🏍", "🛺", "🚂"] // 24 cards so far
                emojis = emojis.shuffled()
                emojiCount = 24
            } label: {
                VStack {
                    Image(systemName: "car.fill")
                        .resizable()
                        .aspectRatio(4/3, contentMode: .fit)
                    Text("Vehicles").font(.subheadline)
                }
                .frame(width: 60, height: 60)
                
                
            }
            Spacer()
            Button {
                emojis = ["🐿", "🦬", "🐄", "🐕", "🦔", "🐐", "🐢", "🐅", "🦘", "🦛"] // 10 cards so far
                emojis = emojis.shuffled()
                emojiCount = 10
            } label: {
                VStack {
                    Image(systemName: "tortoise.fill")
                        .resizable()
                        .aspectRatio(4/3, contentMode: .fit)
                        
                    Text("Animals").font(.subheadline)
                }
                .frame(width: 60, height: 60)
            }
            Spacer()
            Button {
                emojis = ["☁️", "☀️", "🌤", "⛅️", "🌧", "🌨", "🌩", "❄️", "🌈",] // 9 cards so far
                emojis = emojis.shuffled()
                emojiCount = 9
            } label: {
                VStack {
                    Image(systemName: "cloud.drizzle.fill")
                        .resizable()
                        .aspectRatio(4/3, contentMode: .fit)
                    Text("Weather").font(.subheadline)
                }
                .frame(width: 60, height: 60)
            }
        }
        .padding(.horizontal, 30)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true // a pointer to a Bool somewhere else in memory, and that can change, not the pointer itself
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                //face down
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}





























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.light)
.previewInterfaceOrientation(.portrait)
    }
}
