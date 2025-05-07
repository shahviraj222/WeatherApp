//
//  WeatherButton.swift
//  Weather
//
//  Created by viraj shah on 04/05/25.
//

import SwiftUI


struct WeatherButton:View{
    
    var Title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View{
        Text(Title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size:20,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}


struct WeatherButton_rPreviews: PreviewProvider {
    static var previews: some View {
        WeatherButton(Title: "Preview", textColor: .white, backgroundColor: .blue)
    }
}
