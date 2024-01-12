//
//  File.swift
//  HomeApp
//
//  Created by Yukun Xie on 2024/1/10.
//

import SwiftUI



struct roundButton: View {
    
    let image: String
    let text1: String
    let text2: String
    
    
    
    var body: some View {
        
        HStack {
            
            //Shape beside
            Image(systemName: image)
                .font(.system(size: 25))
                .foregroundStyle(.blue2)
            
            //Text
            VStack (alignment: .leading){
                Text(text1)
                    .foregroundColor(.white)
                
                Text(text2)
                    .foregroundColor(.gray)
            }
            .font(.system(size: 15))
            
        }
        .padding(8)
        .padding(.trailing)
        .background(.blue1)
        .cornerRadius(40)
        
    }
    
    
}

#Preview {
    roundButton(image: "fan.fill", text1: "Climate", text2: "16.0-20.5")
}
