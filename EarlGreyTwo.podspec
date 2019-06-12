Pod::Spec.new do |s|

  s.name = "EarlGreyTwo"
  s.version = "0.9.2"
  s.summary = "ObjC and Swift remote invocation framework"
  s.homepage = "https://github.com/brettfazio/EarlGrey"
  s.author = "Google Inc."
  s.summary = "eDistantObject provides users an easy way to make remote method invocations between processes in Objective-C and Swift without explicitly constructing RPC structures."
  s.license = { :type => "Apache 2.0", :file => "LICENSE" }
  s.source = { :git => "https://github.com/brettfazio/EarlGrey.git", :branch => "removed" }

  # Subspec each folder so folders exist when pod is installed.

  s.pod_target_xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${SOURCE_ROOT}/**"', 'HEADER_SEARCH_PATHS' => '"${SOURCE_ROOT}/**"' }
  
  allf = Dir.glob("**/*.{m,h}")
  allh = Dir.glob("**/*.h")
  
  alltestf = Dir.glob("Tests/**/*.{m,h}")
  alltesth = Dir.glob("Tests/**/*.h")
  
  appff = Dir.glob("AppFramework/**/*.m")
  
  add = Dir.glob("AppFramework/Matcher/GREYMatchersShorthand.m")
  
  sour = (allf - alltestf) - appff
  sour = sour + add
  head = allh - alltesth
  
  s.source_files = sour
  s.public_header_files = head

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"
  
  s.frameworks = "XCTest", "UIKit", "CoreFoundation"

end
