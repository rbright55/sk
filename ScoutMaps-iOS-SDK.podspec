Pod::Spec.new do |s|
  s.name = 'ScoutMaps-iOS-SDK'
  s.version = '3.2.0'
  s.authors = { 'Telenav Inc.' => 'http://www.telenav.com/about/' }
  s.source = { :http => 'http://developer.skobbler.com/cocoapods/ScoutMaps-iOS-SDK_3.0.3.zip'}
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
