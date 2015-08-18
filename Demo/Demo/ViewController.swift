//
//  ViewController.swift
//  ColorPinAnnotationView
//
//  Created by Daniel Saidi on 2015-08-18.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

import UIKit
import MapKit
import ColorPinAnnotationView

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView! {
        didSet { mapView.delegate = self }
    }
    
    
    func addAnnotations() {
        var annotations = [ColorPinAnnotation]()
        
        for index in 0...20 {
            let annotation1 = ColorPinAnnotation()
            let center = mapView.centerCoordinate
            annotation1.coordinate = CLLocationCoordinate2D.randomFromCenter(center)
            annotation1.title = "Pin with random color"
            annotation1.subtitle = "Subtitle"
            annotation1.color = UIColor.random()
            annotations.append(annotation1)
        }
        
        mapView.addAnnotations(annotations)
    }
    
    
    
    func mapView(mapView: MKMapView!, regionDidChangeAnimated animated: Bool) {
        addAnnotations()
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if (annotation is ColorPinAnnotation) {
            return (annotation as! ColorPinAnnotation).annotationViewForMapView(mapView)
        }
        return nil
    }
    
    func mapView(mapView: MKMapView!, didAddAnnotationViews views: [AnyObject]!) {
        mapView.animateDropForAddedAnnotationViews(views)
    }
}

