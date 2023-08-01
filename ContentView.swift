//
//  ContentView.swift
//  War Card Game
//
//  Created by Pari Patel on 7/2/23.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    
                }
                
                Spacer()
            }
           
        }
        
            
        }
    
    func deal(){
      // Randomize the players Card
        let cardVal = Int.random(in: 2...14)
        playerCard = "card" + String(cardVal)
        //Randomize the cpus card
        let cardVal2 = Int.random(in: 2...14)
        cpuCard = "card" + String(cardVal2)
        // Update the Scores
        if cardVal > cardVal2 {
            playerScore += 1
        }
        else if cardVal < cardVal2{
            cpuScore += 1
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
