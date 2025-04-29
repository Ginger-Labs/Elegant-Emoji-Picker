Pod::Spec.new do |s|

  s.name         = "ElegantEmojiPicker"
  s.version      = "1.0"
  s.summary      = "Custom Emoji Picker"
  s.license      = "Copyright 2025 Ginger Labs Inc."
  s.author             = { "Lakshya Nagal" => "lakshyanagal@gingerlabs.com" }
  s.ios.deployment_target = "16.0"
  s.osx.deployment_target = "13.0"
  
  s.source       = { :git => "git@github.com:Ginger-Labs/Elegant-Emoji-Picker.git", :tag => "#{s.version}" }
  s.swift_version = "5.0"
  s.homepage = "http://gingerlabs.com"
  
  # linking
  s.pod_target_xcconfig = {
      # Don't ignore compile warnings
      'GCC_WARN_UNUSED_PARAMETER' => 'NO',
      'GCC_TREAT_WARNINGS_AS_ERRORS' => 'NO',
      'SWIFT_TREAT_WARNINGS_AS_ERRORS' => 'NO',

      'DEFINES_MODULE' => 'YES',

#      'OTHER_CFLAGS' => '-Wall -Wextra',
  }

  s.source_files = "Sources/**/*.{swift}"
  s.resources = "Sources/Resources/**/*.*"

end
