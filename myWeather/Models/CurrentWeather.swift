//
//  CurrentWeather.swift
//  myWeather
//
//  Created by  Mikhail on 25/04/2020.
//  Copyright © 2020  Mikhail. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    let feelsLikeTemperature: Double
    var feelsLiketemperatureString: String {
        return "\(feelsLikeTemperature  .rounded())"
    }
    let conditionCoide: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCoide = currentWeatherData.weather.first!.id
    }
}
