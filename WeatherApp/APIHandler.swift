//
//  APIHandler.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation
import Alamofire

struct APIHandler {
    static func requestWeather(success: @escaping (Data)->(), failure: @escaping (Error)->()) {
        Alamofire.request("https://api.darksky.net/forecast/465ec54364c894ee23b02036be5fa9d5/37.8267,-122.4233?UNITS=si").responseData { (response) in
            switch response.result {
            case .success(let value):
                success(value)
            case .failure(let error):
                failure(error)
            }
        }
    }
}
