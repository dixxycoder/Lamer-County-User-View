//
//  Map of the Event Controller.swift
//  lamar county  take 2
//
//  Created by Grant Spraker on 4/1/22.
//

import UIKit

import MapKit

class Map_of_the_Event_Controller: UIViewController, CLLocationManagerDelegate
{

    @IBOutlet weak var mappyView: MKMapView!
    
    let locationManager = CLLocationManager()

    var currentLocation: CLLocation!

    var parks: [MKMapItem] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.requestWhenInUseAuthorization()
        mappyView.showsUserLocation = true
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
     currentLocation = locations[0]
    }

//    @IBAction func ZoomButton(_ sender: UIBarButtonItem)
//    {
//        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        let center = currentLocation.coordinate
//        let region = MKCoordinateRegion(center: center, span: coordinateSpan)
//        mappyView.setRegion(region, animated: true)
//    }
//
//    @IBAction func whenSearch(_ sender: Any)
//    {
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = "Parks"
//
//        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
//
//        let search = MKLocalSearch(request: request)
//        search.start
//        {
//            (response, error) in
//        guard let response = response else
//
//        { return }
//
//        for mapItem in response.mapItems
//            {
//
//        self.parks.append(mapItem)
//        let annotation = MKPointAnnotation()
//
//        annotation.coordinate = mapItem.placemark.coordinate
//        annotation.title = mapItem.name
//
//        self.mappyView.addAnnotation(annotation)
//            }
//        }
//    }
}

