#
#  Be sure to run `pod spec lint TSLKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "TSLKit"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of TSLKit."
  spec.homepage     = "https://github.com/tongshunli/TSLKit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "tongshunli" => "13466621196@163.com" }
  spec.source       = { :git => "https://github.com/tongshunli/TSLKit.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '10.0'
  spec.source_files  = 'TSLKit/**/*'

end
