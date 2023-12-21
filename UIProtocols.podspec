#
# Be sure to run `pod lib lint UIProtocols.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIProtocols'
  s.version          = '0.1.3'
  s.summary          = 'This library helps to create UIViewControllers and UIViews easily'
  s.description      = 'This library contains protocols, that help create UIViewControllers from Storyboard and UIViews from xibs. There are some helpers to work with UITableView and UICollectionView as well'
  s.homepage         = 'https://github.com/iOSDevelopMan/UIProtocols.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aliaksei Kachura' => 'alexonthework@gmail.com' }
  s.source           = { :git => 'https://github.com/iOSDevelopMan/UIProtocols.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.9'
  s.source_files = 'Sources/UIProtocols/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIProtocols' => ['UIProtocols/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
