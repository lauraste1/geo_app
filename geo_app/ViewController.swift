//
//  ViewController.swift
//  geo_app
//
//  Created by Laura Stephens on 19/1/20.
//  Copyright © 2020 Laura Stephens. All rights reserved.
//

import UIKit
import Mapbox


class ViewController: UIViewController, MGLMapViewDelegate {

    @IBOutlet weak var mapView: MGLMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 55.9533, longitude: -3.1883), zoomLevel: 12, animated: false)
        view.addSubview(mapView)
        mapView.styleURL = MGLStyle.streetsStyleURL
        
        let tempotea = MGLPointAnnotation()
        tempotea.coordinate = CLLocationCoordinate2D(latitude: 55.951822, longitude: -3.186148)
        tempotea.title = "Tempo Tea"
        tempotea.subtitle = "7 East Market St"
  
        let tea2 = MGLPointAnnotation()
        tea2.coordinate = CLLocationCoordinate2D(latitude: 55.945181, longitude: -3.217633)
        tea2.title = "T'EA! 挑TEA派"
        tea2.subtitle = "30 Dalry Rd"
 
        let rainbowtea = MGLPointAnnotation()
        rainbowtea.coordinate = CLLocationCoordinate2D(latitude: 55.954721, longitude: -3.190591)
        rainbowtea.title = "Rainbow Bubble Tea"
        rainbowtea.subtitle = "Waverley Mall, Waverley Bridge"
        
         let yitea = MGLPointAnnotation()
         yitea.coordinate = CLLocationCoordinate2D(latitude:  55.942905, longitude: -3.182595)
         yitea.title = "Yi Wang Taiwan Fruit Tea"
         yitea.subtitle = "12 Clerk St"
         
        let chatime = MGLPointAnnotation()
        chatime.coordinate = CLLocationCoordinate2D(latitude:  55.949883, longitude: -3.193083)
        chatime.title = "Chatime"
        chatime.subtitle = "14 Bank St"
        
        let annotations = [tempotea, tea2, rainbowtea, yitea, chatime]
        
        mapView.addAnnotations(annotations)
        // Set the map view's delegate
        mapView.delegate = self
         
        // Allow the map view to display the user's location
        mapView.showsUserLocation = true
    }

    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
}
//inspired by Mapbox intro tutorial
