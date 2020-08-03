require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-cq-share"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/ArlenWang/react-native-cq-share.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/CQShare/*.{h,m}"

  s.dependency 'React'
end
