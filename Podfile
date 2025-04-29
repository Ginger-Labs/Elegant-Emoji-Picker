use_modular_headers!

# installation method and options
install! 'cocoapods', :share_schemes_for_development_pods => ['ElegantEmojiPicker']

target 'Demo' do
    use_frameworks!
    platform :ios, '16.0'
end

post_install do |installer|
  puts 'Fixing signing issues with resource bundles for mac catalyst - see https://github.com/CocoaPods/CocoaPods/issues/8891 for details'
  installer.pods_project.targets.each do |target|
    # Fix bundle targets' 'Signing Certificate' to 'Sign to Run Locally'
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '13.0'
      config.build_settings['CODE_SIGN_IDENTITY[sdk=macosx*]'] = '-'
    end
  end
end

