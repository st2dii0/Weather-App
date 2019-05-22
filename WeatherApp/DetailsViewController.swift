//
//  DetailsViewController.swift
//  WeatherApp
//
//  Created by Steeve Randriamampianina on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var dataReceived: MKPointAnnotation?
    var city: CityDetails?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        request()
        self.title = dataReceived?.title ?? ""
        self.tableView.delegate  =  self
        self.tableView.dataSource = self
        
        
    }
    
    func request() {
        APIHandler.requestWeather(success: { (data) in
            let decoder = JSONDecoder()
            self.city = try? decoder.decode(CityDetails.self, from: data)
            print(self.city ?? "")
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    
<<<<<<< HEAD
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
=======
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
>>>>>>> d435ee68b8eff3d376088c61cd13ee529ede5a02
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(self.city ?? "")
        return UITableViewCell()
    }
    

}
