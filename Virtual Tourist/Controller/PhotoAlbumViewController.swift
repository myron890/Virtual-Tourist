//
//  PhotoAlbumViewController.swift
//  Virtual Tourist
//
//  Created by Myron Govender on 2021/05/11.
//

import UIKit
import MapKit

class PhotoAlbumViewController: UIViewController {
    
    //MARK: Variables

    //MARK: Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var newCollectionButton: UIBarButtonItem!
    
    //MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //mapView.isZoomEnabled = false
        //mapView.isScrollEnabled = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        mapView.removeAnnotations(mapView.annotations) //remove any annotations from the map
    }
    
    //MARK: Actions
    @IBAction func newCollectionButtonPressed(_ sender: Any) {
    }

    //MARK: Methods
    func addAnnotationToMap(_ annotation: MKPointAnnotation){
        mapView.addAnnotation(annotation)
        mapView.setCenter(annotation.coordinate, animated: true)
    }
    
}
