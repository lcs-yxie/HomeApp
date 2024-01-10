//
//  ContentView.swift
//  HomeApp
//
//  Created by Yukun Xie on 2024/1/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            //The title
            VStack{
                Text("My Home")
                    .font(.system(size: 40))
                    .bold()
                    .padding(.trailing, 200)
            Spacer()
                
                
                
            }
                
            
                
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                HStack {
                                    Image(systemName: "waveform.path.ecg")
                                    Image(systemName: "plus")
                                    Image(systemName: "ellipsis.circle")
                                }
                                .foregroundColor(.black)
                            }
                        }
                        .navigationBarTitleDisplayMode(.inline)
                }
                .accentColor(.blue)
        
        
        
                        
        VStack {
            
            
            
            Image(systemName: "")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
