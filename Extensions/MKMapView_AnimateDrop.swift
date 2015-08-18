//
//  MKMapView_AnimateDrop.swift
//  ColorPinAnnotationView
//
//  Created by Daniel Saidi on 2015-02-09.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

import MapKit

public extension MKMapView {
    public func animateDropForAddedAnnotationViews(views: [AnyObject]!) {
        var duration = 0.5
        var durationOffset = 0.005
        for obj in views {
            if let view = obj as? ColorPinAnnotationView {
                if (view.animatesDrop) {
                    duration += durationOffset
                    view.animateDropWithDuration(duration)
                }
            }
        }
    }
}
