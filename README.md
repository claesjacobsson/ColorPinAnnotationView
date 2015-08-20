ColorPinAnnotationView
======================

[![](https://img.shields.io/cocoapods/v/ColorPinAnnotationView.svg)](https://cocoapods.org/pods/ColorPinAnnotationView)
![](https://img.shields.io/cocoapods/p/ColorPinAnnotationView.svg)

ColorPinAnnotationView is an iOS Swift class that can use
any custom color, instead of MKPinAnnotationView which is
limited to three colors.

To use the ColorPinAnnotationView class, just return such
a view whenever your map view asks you for the view for a
certain annotation, just like you do otherwise.

ColorPinAnnotationView has a pinColor property, which you
can set to any UIColor value. It also has an animatesDrop
property, which is tru by default.


Important
---------

For now, you have to add the ColorPinAnnotationView asset
to your own project. If you don't, your app will crash.

If you add the lib manually, just add the xcasset catalog
together with the class files.

If you add the lib using the pod, just add a reference to
the xcasset catalog in the pod folder.


Demo
----

The demo project in this repository shows you how you can
use ColorPinAnnotationView to add pins with random colors
to the map. The app adds a bunch of randomly colored pins
whenever the region changes.


CocoaPod
--------

You can easily add this library to your own project using
CocoaPods (check out https://cocoapods.org). Just add the
following to your pod file:

    pod 'ColorPinAnnotationView', '<version>'

Contact
------------

To get in touch with me regarding this and other projects
that I am working on:

	Project site:	http://github.com/danielsaidi/ColorPinAnnotationView
	CocoaPod:		https://cocoapods.org/pods/ColorPinAnnotationView
	Blog:			http://danielsaidi.wordpress.com
	Twitter:		http://twitter.com/danielsaidi
	
Contributions to this project are more than welcome. Just
send me a pull request or get in touch. 


