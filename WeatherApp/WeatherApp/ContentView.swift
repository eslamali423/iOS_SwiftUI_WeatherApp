//
//  ContentView.swift
//  WeatherApp
//
//  Created by Eslam Ali  on 01/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient  (gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                Text("Egypt, Cairo")
                    .padding()
                    .font(.system(size: 30, weight: .regular, design: .default))
                    .foregroundColor(.white)
            
                Spacer()
                
                VStack(spacing: -10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    
                    
                    Text("44°")
                        .padding()
                        .font(.system(size: 50, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                 
                
                } // vstack
                .padding(.bottom, 50)
                
                HStack (spacing: -5){
                    weatherDayView(day: "SAT", imageName: "cloud.sun.fill", temp: 37)
                    weatherDayView(day: "SUN", imageName: "sun.max.fill", temp: 45)
                    weatherDayView(day: "MON", imageName: "wind.snow", temp: 29)
                    weatherDayView(day: "TUS", imageName: "sunset.fill", temp: 27)
                    weatherDayView(day: "WED", imageName: "sun.dust.fill", temp: 18)

                    
                }
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    Text("Change Day Time")
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .frame(width: 250, height: 50)
                        .foregroundColor(.blue)
                        .background(Color(.white))
                        .cornerRadius(10)
                }
                
                Spacer()

            }// vstack
            
        

            
        } //Zstack
        
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct weatherDayView: View {
   
    var day : String
    var imageName : String
    var temp : Int
    
    var body: some View {
        VStack {
            Text(day)
                .padding()
                .font(.system(size: 22, weight: .semibold, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temp)°")
                .padding()
                .font(.system(size: 24, weight: .semibold, design: .default))
                .foregroundColor(.white)
           
        }
    }
}
