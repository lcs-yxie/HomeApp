//
//  ContentView.swift
//  HomeApp
//
//  Created by Yukun Xie on 2024/1/9.
//

import SwiftUI

struct ContentView: View {
    
    let firstGradientColors = Gradient(colors: [.lightBlue, .deepPurple, .clear])
    let secondGradientColors = Gradient(colors: [.lightYellow, .deepPurple, .clear])
    
    var body: some View {
        NavigationStack{
            ZStack {
                //Background
                Color.black
                    .ignoresSafeArea()
                
                //First gradient
                RadialGradient(gradient: firstGradientColors, center: .topLeading, startRadius: 100, endRadius: 550)
                    .ignoresSafeArea()
                
                //Second gradient
                RadialGradient(gradient: secondGradientColors, center: .bottomTrailing, startRadius: 100, endRadius: 650)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){

                    
                    //Top control button
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            roundButton(image: "fan.fill", text1: "Climate", text2: "16.0-20.5")
                            roundButton(image: "lock.fill", text1: "Security", text2: "No Alerts")
                            roundButton(image: "tv.and.hifispeaker.fill", text1: "Speakers", text2: "None Play")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    Text("Favorites")
                        .font(.system(size: 25))
                        .bold()
                        .padding(.trailing, 180)
                    
                    HStack{
                        VStack (alignment: .leading) {
                            squareButton(image: "door.garage.closed", text1: "Garage", text2: "Door", text3: "Closed")
                            squareButton(image: "lock.fill", text1: "Living Room", text2: "Front Door", text3: "Locked")
                        }
                        VStack (alignment: .trailing){
                            squareButton(image: "17.square", text1: "Hallway", text2: "Nesta", text3: "Heat to 12.0")
                            squareButton(image: "lock.fill", text1: "Basement", text2: "Side Door", text3: "Locked")
                        }
                    }
                }
                .padding(.leading)
                
                .accentColor(.blue)
            }
            .navigationTitle("My Home")
            //Tool bar
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "fan.fill")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "waveform")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
