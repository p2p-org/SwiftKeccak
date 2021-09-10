Pod::Spec.new do |s|
  s.name             = 'SwiftKeccak'
  s.version          = '0.1.2'
  s.summary          = 'Ethereum compatible Keccak hash for Swift'
  s.description      = <<-DESC
    Ethereum compatible Keccak hash for Swift.
                       DESC

  s.homepage         = 'https://github.com/p2p-org/SwiftKeccak'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chung Tran' => 'bigearsenal@gmail.com' }
  s.source           = { :git => 'https://github.com/p2p-org/SwiftKeccak.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/**/*.swift'
  
  # s.resource_bundles = {
  #   'BufferLayoutSwift' => ['BufferLayoutSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Runtime', '~> 2.2.2'
end
