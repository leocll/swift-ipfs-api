
Pod::Spec.new do |s|
  s.name             = "SwiftIpfsApi"
  s.version          = "1.0.0"
  s.summary          = "ipfs api for swift"
  s.description      = <<-DESC
  ipfs api for swift
                       DESC

  s.homepage         = "https://github.com/leocll/swift-ipfs-api.git"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "leocll" => "leocll@qq.com" }
  s.source           = { :git => "https://github.com/leocll/swift-ipfs-api.git", :branch => 'master' }

  s.ios.deployment_target = "8.0"

  s.subspec 'SwiftIpfsApi' do |ss|
    ss.source_files = 'SwiftIpfsApi/**/*.{h,m,swift}'
    ss.dependency 'SwiftIpfsApi/SwiftMultiaddr'
  end

  s.subspec 'SwiftMultiaddr' do |ss|
    ss.source_files = 'SwiftMultiaddr/**/*.{h,m,swift}'
    ss.dependency 'SwiftIpfsApi/SwiftMultihash'
  end

  s.subspec 'SwiftMultihash' do |ss|
    ss.source_files = 'SwiftMultihash/**/*.{h,m,swift}'
  end

  s.vendored_frameworks = 'Frameworks/VarInt.framework','Frameworks/SwiftBase58.framework','Frameworks/SwiftGMP.framework','Frameworks/SwiftHex.framework'

end





