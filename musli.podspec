#
# Be sure to run `pod lib lint musli.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Musli'
  s.version          = '0.1.0'
  s.summary          = 'A short description of musli.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CommonSenseDTU/musli'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anders Borch' => 'anders@cyborch.com' }
  s.source           = { :git => 'https://github.com/CommonSenseDTU/musli.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'musli/Classes/**/*'
  
  # s.resource_bundles = {
  #   'musli' => ['musli/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'RestKit'
  s.dependency 'ResearchKit', '~> 1.3'
  s.dependency 'RKValueTransformers', '~> 1.1'
  s.dependency 'Granola', '~> 0.5'
  s.dependency 'SDWebImage', '~> 3.8'
  s.dependency 'Locksmith', '~> 3.0'
end
