//
//  ContentView.swift
//  Weather
//
//  Created by viraj shah on 04/05/25.
//

import SwiftUI

struct ContentView: View {
    
//  structure are recreated and destroy multiple times but if we write state then that varible are not created multiple times it saves the data of that varible.
    
    @State private var isNight = true
    var weatherData:[Weather] = []
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack(spacing: 10){
                CityTextView(cityName: "Cupertion,CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(weatherData) { weather in
                            WeatherDayView(dayOfWeek: weather.dayOfWeek,
                                           imageName: weather.imageName,
                                           temperature: weather.temperature)
                        }
                    }.padding(.horizontal)
                }

                Spacer()
                
                Button{
                    isNight.toggle()
                }label:{
                    WeatherButton(Title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView(weatherData: weatherList.weatherdata)
}

struct WeatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack(spacing: 2.0){
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight:.medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
//    binding used to bind the varible to the main variable so whenever the value of above variable changes then this is change accordingly.
//    if you are only used data for reading in fucntion then we don't requried binding.
    @Binding var isNight:Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black:.blue,isNight ? .gray  : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomLeading)
        .edgesIgnoringSafeArea(.all) // for ignoring safe area.
    }
}

struct CityTextView:View{
    
    var cityName:String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView:View {
    
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit )
                .frame(width:180,height: 180)
            
            Text("\(temperature)°C")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom,40)
    }
}


