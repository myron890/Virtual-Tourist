//
//  PhotoAlbumViewController.swift
//  Virtual Tourist
//
//  Created by Myron Govender on 2021/05/11.
//

import UIKit
import MapKit

class PhotoAlbumViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var newCollectionButton: UIBarButtonItem!
    
    //MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    @IBAction func newCollectionButtonPressed(_ sender: Any) {
    }
    

}
