//
//  CLLocationCoordinate2D_Random.swift
//  Demo
//
//  Created by Daniel Saidi on 2015-08-18.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

import CoreGraphics
import CoreLocation

extension CLLocationCoordinate2D {
    static func randomFromCenter(center: CLLocationCoordinate2D) -> CLLocationCoordinate2D {
        let lat = center.latitude + getRandomOffset()
        let lon = center.longitude + getRandomOffset()
        return CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
    
    private static func getRandomOffset() -> Double {
        let float = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let double = Double(float)
        return 10 * (double - 0.5)
    }
}
