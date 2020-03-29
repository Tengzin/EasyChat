# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'EasyChat' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for EasyChat
  pod 'Firebase'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'
  pod 'Firebase/Analytics'
  pod 'SVProgressHUD'
  pod 'ChameleonFramework'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
