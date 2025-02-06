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
            LinearGradient(gradient: Gradient(colors: [.blue,Color("LightBlue")]),
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
                        
                    
                    Text("37°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                        
                }
                Spacer()
                
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 37)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "wind",
                                   temperature: 40)

                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 36)

                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 38)

                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sun.max.fill",
                                   temperature: 42)
//
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
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 62,height: 70)
            Text("\(temperature)°")
                .font(.system(size: 30,weight: .medium))
                .foregroundColor(.white)
        }
    }

}
