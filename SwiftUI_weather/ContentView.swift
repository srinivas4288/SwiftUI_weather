//
//  ContentView.swift
//  SwiftUI_weather
//
//  Created by Sudheer Arava on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
//            LinearGradient(colors: [Color.blue], startPoint: .topLeading, endPoint: .topTrailing)
            LinearGradient(gradient: Gradient(colors: [.blue,.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(edges: .all)
                
            VStack {
                Text("Delhi")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
               
                VStack() {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160,height: 160)
                        
                    
                    Text("42°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                        
                }
                Spacer()
                
                HStack{
                    WeatherDayView()
                    
                }
                
            }
            Spacer()
            
        }
    }
}
    #Preview {
        ContentView()
    }


struct WeatherDayView: View {
    var body: some View {
        VStack{
            Text("TUE")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70,height: 70)
            Text("42°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
