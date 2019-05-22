//
//  CityDetails.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation


struct CityDetails: Decodable {
    //var name: String
    var latitude: Double
    var longitude: Double
    
    var icon: String
    var temperature: Double
    var summary: String
    var precipIntensity: Double
    var pressure: Double
    var humidity: Double
    var uvIndex: Int
    var hourly_summary: String
    var daily_summary: String
}


