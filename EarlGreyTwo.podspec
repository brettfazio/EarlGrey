Pod::Spec.new do |s|

  s.name = "EarlGreyTwo"
  s.version = "0.9.3"
  s.summary = "ObjC and Swift remote invocation framework"
  s.homepage = "https://github.com/brettfazio/EarlGrey"
  s.author = "Google Inc."
  s.summary = "eDistantObject provides users an easy way to make remote method invocations between processes in Objective-C and Swift without explicitly constructing RPC structures."
  s.license = { :type => "Apache 2.0", :file => "LICENSE" }
  s.source = { :git => "https://github.com/brettfazio/EarlGrey.git", :branch => "removed" }

  # Subspec each folder so folders exist when pod is installed.

  s.pod_target_xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${SOURCE_ROOT}/**"', 'HEADER_SEARCH_PATHS' => '"${SOURCE_ROOT}/**"' }
  
  sources = (Dir.glob("{TestLib,CommonLib}/**/*.{m,h}")) + (Dir.glob("AppFramework/**/*.h")) + Dir.glob("AppFramework/Synchronization/GREYUIThreadExecutor.h") + Dir.glob("AppFramework/Error/GREYFailureScreenshotterStub.m")
  
  headers = Dir.glob("{TestLib,CommonLib,AppFramework,UILib}/**/*.h")

  s.source_files = sources
  s.public_header_files = headers

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.10"
  
  s.frameworks = "XCTest", "UIKit", "CoreFoundation"

end
