#
#  Be sure to run `pod spec lint ColorPinAnnotationView.podspec' to ensure that this is
#  a valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name      = "ColorPinAnnotationView"
  s.version   = "1.0.2"
  s.summary   = "ColorPinAnnotationView can use any UIColor value instead of MKPinAnnotationView's three."
  s.homepage  = "https://github.com/danielsaidi/ColorPinAnnotationView"
  s.license   = "MIT"

  s.author            = { "Daniel Saidi" => "daniel.saidi@gmail.com" }
  s.social_media_url  = "http://twitter.com/danielsaidi"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/danielsaidi/ColorPinAnnotationView.git", :tag => "1.0.2" }
  s.source_files = "**/*.{swift}"
  s.exclude_files = "Demo"
  s.resource     = "*.xcassets"

end
