require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNCodePush"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['repository']['url']
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/17554265585/react-native-code-push.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/CodePush/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'SSZipArchive', '~> 2.1'
  s.dependency 'JWT', '~> 3.0.0-beta.7'
  s.dependency 'Base64', '~> 1.1'
end
