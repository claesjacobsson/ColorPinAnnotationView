//
//  ColorPinAnnotation.swift
//  ColorPinAnnotationView
//
//  Created by Daniel Saidi on 2015-08-18.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

/*
    This is a help class that you can use to add colored
    pins to your map view with minimum effort. You don't
    have to use it in your apps; any MKAnnotation can be
    used with a ColorPinAnnotation.
*/

import UIKit
import MapKit

public class ColorPinAnnotation: UIView, MKAnnotation {
    
    public var title = ""
    public var subtitle = ""
    public var color = UIColor.redColor()
    
    public var coordinate : CLLocationCoordinate2D {
        get { return coordinateRegion.center }
        set { coordinateRegion.center = newValue }
    }
    
    public var coordinateRegion = MKCoordinateRegion()
    
    
    
    public func annotationViewForMapView(mapView:MKMapView) -> MKAnnotationView {
        let id = "ColorPinAnnotation"
        var view = mapView.dequeueReusableAnnotationViewWithIdentifier(id)
        if (view == nil) {
            view = ColorPinAnnotationView(annotation: self, reuseIdentifier: id)
        }
        
        if let customPin = view as? ColorPinAnnotationView {
            customPin.pinColor = color
        }
        
        return view
    }
}
