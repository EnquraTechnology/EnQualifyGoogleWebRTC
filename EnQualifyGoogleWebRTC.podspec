Pod::Spec.new do |s|
  s.name             = 'EnQualifyGoogleWebRTC'
  s.version          = '1.1.32000'
  s.summary          = 'WebRTC iOS SDK'
  s.description      = 'WebRTC is a free, open project that provides browsers and mobile applications with Real-Time Communications (RTC) capabilities via simple APIs.'
  
  s.homepage         = 'https://webrtc.org/'
  s.license          = { :type => 'Multiple', :file => 'LICENSE.md' }
  s.author           = 'The WebRTC project authors.'
  
  s.source           = { :http => 'https://dl.google.com/dl/cpdc/eae5bee0861b6f47/GoogleWebRTC-1.1.31999.tar.gz' }
  
  s.ios.deployment_target = '12.0'
  
  s.vendored_frameworks = 'Frameworks/frameworks/WebRTC.framework'
  
  s.preserve_paths = ['LICENSE.md', 'README.md']
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end