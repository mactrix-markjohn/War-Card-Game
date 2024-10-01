//
//  ContentView.swift
//  War Card Game
//
//  Created by mac on 30/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20.0) {
                Image("logo")
                    .imageScale(.large)
                HStack(spacing: 50.0) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                Button {
                    deal()
                }label: {
                    Image("button")
                }
                
                
                HStack(spacing: 100.0) {
                    VStack(spacing: 20.0) {
                        Text("Player")
                            .foregroundStyle(.white)
                        Text(String(playerScore))
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                    
                    VStack(spacing: 20.0) {
                        Text("CPU")
                            .foregroundStyle(.white)
                        Text(String(cpuScore))
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                }

            }
            .padding()
        }
    }
    
    func deal() {
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScore += 1
        }else if cpuCardValue > playerCardValue{
            //Add 1 to cpu score
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
