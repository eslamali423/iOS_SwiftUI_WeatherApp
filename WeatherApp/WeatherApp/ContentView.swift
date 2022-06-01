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
            backgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            
            VStack{
                CityTitleView(cityName: "Egypt, Cairo")
            
                Spacer()
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temp: 44)
                
                HStack (spacing: -5){
                    weatherDayView(day: "SAT", imageName: "cloud.sun.fill", temp: 37)
                    weatherDayView(day: "SUN", imageName: "sun.max.fill", temp: 45)
                    weatherDayView(day: "MON", imageName: "wind.snow", temp: 29)
                    weatherDayView(day: "TUS", imageName: "sunset.fill", temp: 27)
                    weatherDayView(day: "WED", imageName: "sun.dust.fill", temp: 18)

                    
                }
                Spacer()
                
             WeatherButtonView(buttonTitle: "Change Day Time")

            }// vstack
            
        

            
        } //Zstack
        
       
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

struct backgroundView: View {
    
    var topColor: Color
    var bottomColor : Color
    
    var body: some View {
        LinearGradient  (gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTitleView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .padding()
            .font(.system(size: 30, weight: .regular, design: .default))
            .foregroundColor(.white)
    }
}

struct MainWeatherStatusView: View {
    var imageName : String
    var temp: Int
    
    var body: some View {
        
        VStack(spacing: -10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            
            Text("\(temp)°")
                .padding()
                .font(.system(size: 50, weight: .medium, design: .default))
                .foregroundColor(.white)
            
         
        
        } // vstack
        .padding(.bottom, 50)
    }
}


struct WeatherButtonView :View {
    var buttonTitle : String
    var body: some View{
        Button {
            print("Tapped")
        } label: {
            Text(buttonTitle)
                .font(.system(size: 18, weight: .bold, design: .default))
                .frame(width: 250, height: 50)
                .foregroundColor(.blue)
                .background(Color(.white))
                .cornerRadius(10)
        }
        
        Spacer()
    }
}
