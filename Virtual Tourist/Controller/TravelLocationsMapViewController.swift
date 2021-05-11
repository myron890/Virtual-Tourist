//
//  TravelLocationsMapViewController.swift
//  Virtual Tourist
//
//  Created by Myron Govender on 2021/05/11.
//

import UIKit
import MapKit

class TravelLocationsMapViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Allow mapView to respond to user long taps to add a pin
        setupGestureRecognizerForMapView()

    }
}

    //Add functionality for MapView to respond to user long press gestures to add a pin
extension TravelLocationsMapViewController {

    func setupGestureRecognizerForMapView(){
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(self.handleLongPress(_:)))
        mapView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
        let location = gestureRecognizer.location(in: mapView)
        let coordinate  = mapView.convert(location, toCoordinateFrom: mapView)
        addPintoMapViewFrom(coordinate)
    }
    
    func addPintoMapViewFrom(_ coordinate: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
    }
    
}
