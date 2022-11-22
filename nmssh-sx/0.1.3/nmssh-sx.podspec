Pod::Spec.new do |s|
  s.name             = 'nmssh-sx'
  s.version          = '0.1.3'
  s.summary          = 'Copy ofNMSSSH lib for Sendlinx'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "foo description. Copy ofNMSSSH lib for Sendlinx"

  s.homepage         = 'https://github.com/vvorlov/nmssh-sx'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vvorlov' => 'wk.orlov@gmail.com' }
  s.source           = { :git => 'https://github.com/vvorlov/nmssh-sx.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc = true
  s.platform = :osx
  s.osx.deployment_target = "10.10"

  s.source_files = 'nmssh-sx/Classes/**/*'

  s.swift_versions = '4.0'

  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
  }

  # s.resource_bundles = {
  #   'nmssh-sx' => ['nmssh-sx/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
