//
//  ContentView.swift
//  War Card Game
//
//  Created by Graceson Thompson on 12/24/23.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard : String = "card7"
    var cpuCard : String = "card13"
    
    var playerScore : Int = 0
    var cpuScore : Int = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
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
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                .font(.title)
                
                Spacer()
        }
    }
}

    func deal(){
        print("Deal Cards")
    }
}


#Preview {
    ContentView()
}
