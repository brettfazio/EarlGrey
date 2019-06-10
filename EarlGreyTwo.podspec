Pod::Spec.new do |s|

  s.name = "EarlGreyTwo"
  s.version = "0.9.0"
  s.summary = "ObjC and Swift remote invocation framework"
  s.homepage = "https://github.com/brettfazio/EarlGrey"
  s.author = "Google Inc."
  s.summary = "eDistantObject provides users an easy way to make remote method invocations between processes in Objective-C and Swift without explicitly constructing RPC structures."
  s.license = { :type => "Apache 2.0", :file => "LICENSE" }
  s.source = { :git => "https://github.com/brettfazio/EarlGrey.git", :branch => "removed" }

  # Subspec each folder so folders exist when pod is installed.
  s.source_files = Dir.glob("**/*.{m,h}")
  s.public_header_files = Dir.glob("**/*.h")

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"

end
