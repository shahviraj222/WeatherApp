//
//  datamodel.swift
//  WeatherApp
//
//  Created by viraj shah on 06/05/25.
//

//
//  datamodel.swift
//  Weather
//
//  Created by viraj shah on 06/05/25.
//

import Foundation

struct Weather:Identifiable{
    var id = UUID()
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
}

struct weatherList{
    static let weatherdata = [
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34),
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34),
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34),
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34),
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34),
        Weather(dayOfWeek:"MON",
                imageName:"cloud.sun.fill",
                temperature: 34)
    ]
}
