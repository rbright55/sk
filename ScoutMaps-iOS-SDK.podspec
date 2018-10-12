Pod::Spec.new do |s|
  s.name = 'ScoutMaps-iOS-SDK'
  s.version = '3.2.0'
  s.summary = 'Scout Maps & Navigation SDK -  an OpenStreetMap-based MapKit alternative'
  s.homepage = 'http://www.scout.me/developer/'
  s.license = { :type => 'commercial', :text => 'see http://www.skobbler.com/legal#termsSDK'}
  s.authors = { 'Telenav Inc.' => 'http://www.telenav.com/about/' }
  s.source = { :http => 'https://github.com/rbright55/sk/tree/master/ScoutMaps-iOS-SDK_3.2.0'}
  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.preserve_paths = 'ScoutMaps-iOS-SDK_3.2.0/SKMaps.framework'
  s.source_files = 'ScoutMaps-iOS-SDK_3.2.0/SKMaps.framework/Headers/*.h'
  s.resources = ['ScoutMaps-iOS-SDK_3.2.0/SKMaps.bundle', 'ScoutMaps-iOS-SDK_3.2.0/SKAdvisorResources.bundle']
  s.header_dir = 'ScoutMaps-iOS'
  s.frameworks = [
    'SKMaps',
    'CoreLocation',
    'OpenGLES',
    'QuartzCore',
    'SystemConfiguration',
    'CoreMotion',
    'AVFoundation',
    'CoreGraphics',
    'CoreData'
  ]
  s.vendored_frameworks = 'ScoutMaps-iOS-SDK_3.2.0/SKMaps.framework'
  s.libraries = [
    'z',
    'c++'
  ]
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ScoutMaps-iOS-SDK/"' }
end
