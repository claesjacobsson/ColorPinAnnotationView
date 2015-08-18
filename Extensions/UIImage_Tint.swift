//
//  UIImage_TintExtension.swift
//  ColorPinAnnotationView
//
//  Created by Daniel Saidi on 2015-02-09.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

import UIKit
import CoreGraphics

public extension UIImage {
    public func imageByTintingWithColor(color:UIColor, andBlendMode blendMode:CGBlendMode) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context = UIGraphicsGetCurrentContext()
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        drawInRect(rect, blendMode: blendMode, alpha: 1.0)
        CGContextSetBlendMode(context, blendMode)
        color.setFill()
        CGContextFillRect(context, rect)
        drawInRect(rect, blendMode: kCGBlendModeDestinationIn, alpha: 1.0)
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return tintedImage
    }
}
