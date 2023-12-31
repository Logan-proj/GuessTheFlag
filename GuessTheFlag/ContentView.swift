//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Logan Toms on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var selectedFlag = ""
    @State private var questionsShown = 0
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the flag")
                    .blueTitleStyle()
                
                VStack(spacing: 15){
                    VStack {
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                        ForEach(0..<3) { number in
                            Button {
                                flagTapped(number)
                            } label: {
                                FlagImage(country: countries[number])
                            }
                        }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text(scoreMessage), dismissButton: .default(Text(questionsShown == 8 ? "Play Again" : "Continue"), action: {
                questionsShown == 8 ? self.resetGame() : self.askQuestion()
            }))
        }
    }
    
    func flagTapped(_ number: Int) {
        questionsShown += 1
        if questionsShown >= 8 {
            scoreTitle = "Game Over"
            scoreMessage = "Your final score is \(score)"
            showingScore = true
            return
        } else if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            scoreMessage = "Your score is \(score)"
        } else {
            selectedFlag = countries[number]
            scoreTitle = "Wrong"
            scoreMessage = "That's the flag of \(selectedFlag)"
        }
        
        showingScore = true
    }
    
    func askQuestion () {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame() {
        score = 0
        questionsShown = 0
        askQuestion()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct FlagImage: View {
    var country: String
    
    var body: some View {
        Image(country)
            .shadow(radius: 5)
    }
}

struct BlueTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundColor(.blue)
    }
}

extension View {
    func blueTitleStyle() -> some View {
        self.modifier(BlueTitleModifier())
    }
}
