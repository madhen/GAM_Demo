#
# Be sure to run `pod lib lint IntgrateGAM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IntgrateGAM'
  s.version          = '0.1.0'
  s.summary          = 'A short description of IntgrateGAM.'
  s.homepage         = 'https://github.com/Varun mamindla/IntgrateGAM'
  s.license          = { :type => 'MIT', :file => 'Modules/IntgrateGAM/LICENSE' }
  s.author           = { 'Varun mamindla' => 'varun.mamindla@macys.com' }
  s.source           = { :git => 'https://github.com/Varun mamindla/IntgrateGAM.git', :tag => s.version.to_s }
  

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  #If we uncomment the line do a pod intsall it is getting succeeded, but where as we integrate this pod in the host application we are getting the error "_OBJC_CLASS_$_DFPRequest", referenced from:
  #s.static_framework = true

  s.source_files = 'Modules/IntgrateGAM/IntgrateGAM/Classes/**/*'
  
  s.dependency  'Google-Mobile-Ads-SDK'
end
