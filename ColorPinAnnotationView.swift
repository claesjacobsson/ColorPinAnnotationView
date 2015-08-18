//
//  ColorPinAnnotationView.swift
//  ColorPinAnnotationView
//
//  Created by Daniel Saidi on 2015-08-18.
//  Copyright (c) 2015 Daniel Saidi. All rights reserved.
//

/*
    If you use this view instead of the MKPinAnnotationView
    class, you can set any UIColor as the pinColor, instead
    of the three MKPinAnnotationViewColor values.

    Other than that, this class looks a little different if
    compared to the default MKPinAnnotationView. It lacks a
    shadow and has a cleaner pin hole.
 */

import UIKit
import MapKit
import CoreGraphics

public class ColorPinAnnotationView: MKAnnotationView {
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        update()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        update()
    }
    
    public override init!(annotation: MKAnnotation!, reuseIdentifier: String!) {
        
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        update()
    }
    
    
    
    public var pinColor = UIColor.redColor() {
        didSet { update() }
    }
    
    public var animatesDrop = true
    
    
    
    func animateDropWithDuration(duration: Double) {
        let viewFrame = frame
        frame = CGRectOffset(viewFrame, 0, -500)
        UIView.animateWithDuration(duration, animations: { self.frame = viewFrame })
    }
    
    
    
    private func update() {
        canShowCallout = true
        
        for view in subviews {
            view.removeFromSuperview()
        }
        
        let body = UIImage(named: "ColorPinBody")
        let head = UIImage(named: "ColorPinHead")
        let coloredHead = head!.imageByTintingWithColor(pinColor, andBlendMode: kCGBlendModeScreen)
        
        let offset = 0.5 * body!.size.height - 2
        centerOffset = CGPoint(x: 0, y: -offset)
        image = body
        let headView = UIImageView(image: coloredHead)
        
        addSubview(headView)
    }
}
