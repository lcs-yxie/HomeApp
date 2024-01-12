//
//  Square button.swift
//  HomeApp
//
//  Created by Yukun Xie on 2024/1/10.
//

//
//  File.swift
//  HomeApp
//
//  Created by Yukun Xie on 2024/1/10.
//

import SwiftUI



struct squareButton: View {
    
    let image: String
    let text1: String
    let text2: String
    let text3: String
    
    
    var body: some View {
        
        HStack {
            
            //Shape beside
            ZStack{
                Image(systemName: image)
                    .font(.system(size: 25))
                    .foregroundStyle(.blue2)
                    .padding(4)
                    .background(.black)
                    .cornerRadius(20)
                    
                    
             
            }
            //Text
            VStack (alignment: .leading){
                Text(text1)
                    .foregroundColor(.gray)
                Text(text2)
                    .foregroundColor(.white)
                Text(text3)
                    .foregroundColor(.gray)
            }
            .font(.system(size: 15))
            
        }
        .padding(15)
        
        .frame(width: 180)
        .background(.blue1)
        .cornerRadius(20)
        
    }
    
    
}

#Preview {
    squareButton(image: "door.garage.closed", text1: "Garage", text2: "Door", text3: "Closed")
}
