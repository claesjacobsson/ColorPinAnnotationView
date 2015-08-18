//
//  UIColor_Random.swift
//  CustomPinAnnotationView
//
//  Created by Daniel Saidi on 2015-08-18.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

import UIKit

extension UIColor {
    class func random() -> UIColor {
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}
