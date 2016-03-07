//
//  FirstViewController.swift
//  ios-go-example
//
//  Created by Artem Nikitin on 07/03/16.
//  Copyright © 2016 Artem Nikitin. All rights reserved.
//

import UIKit
import CoreLocation
import Hereapi

class FirstViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!
    var latitude: Double = 0.0
    var longitude: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            latitude = Double(locationManager.location!.coordinate.latitude)
            longitude = Double(locationManager.location!.coordinate.longitude)
            let image = Hereapi.GoHereapiGetPicture("", "", latitude, longitude, 0, 0, 0)
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

