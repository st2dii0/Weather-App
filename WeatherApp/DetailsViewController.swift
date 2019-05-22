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
    
    
//    func request() {
//        APIHandler.requestWeather(name: dataReceived.name ?? "", success: { (data) in
//            let decoder = JSONDecoder()
//            self.characters = (try? decoder.decode([CitiesData.list].self, from: data)) ?? []
//            self.tableView.reloadData()
//        }) { (error) in
//            print(error)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = dataReceived?.title ?? ""
        //request()
        print(dataReceived?.title ?? "")
    }

}
