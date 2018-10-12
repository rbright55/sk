Pod::Spec.new do |s|
  s.name = 'ScoutMaps-iOS-SDK'
  s.version = '3.2.0'
  s.summary = 'Scout Maps & Navigation SDK -  an OpenStreetMap-based MapKit alternative'
  s.homepage = 'http://www.scout.me/developer/'
  s.license = { :type => 'commercial', :text => 'see http://www.skobbler.com/legal#termsSDK'}
  s.authors = { 'Telenav Inc.' => 'http://www.telenav.com/about/' }
  s.source = { :hg => 'ScoutMaps-iOS-SDK_3.2.0.zip'}
  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.preserve_paths = 'SKMaps.framework'
  s.source_files = 'SKMaps.framework/Headers/*.h'
  s.resources = ['SKMaps.bundle', 'SKAdvisorResources.bundle']
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
  s.vendored_frameworks = 'SKMaps.framework'
  s.libraries = [
    'z',
    'c++'
  ]
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ScoutMaps-iOS-SDK/"' }
end
