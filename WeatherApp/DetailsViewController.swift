//
//  DetailsViewController.swift
//  WeatherApp
//
//  Created by Steeve Randriamampianina on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController {

    var dataReceived: MKPointAnnotation?
    
    
    func request() {
        APIHandler.requestWeather(success: { (data) in
            let decoder = JSONDecoder()
            print(try? decoder.decode([CityDetails].self, from: data)) ?? nil
        }) { (error) in
            print(error)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
         request()
=======
        self.title = dataReceived?.title ?? ""
<<<<<<< HEAD
        //request()
=======
         //request()
>>>>>>> 8611197fc5aa2ab7b78c81c0d788cfd9d2d90fc2
>>>>>>> ea337cd059eb610bc88f3a407d7d2284c6f437e1
        print(dataReceived?.title ?? "")
    }

}
