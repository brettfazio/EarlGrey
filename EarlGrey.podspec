Pod::Spec.new do |s|
  
s.name = "EarlGrey"
s.version = "2.0.8"
s.summary = "iOS UI Automation Test Framework"
s.homepage = "https://github.com/brettfazio/EarlGrey"
s.author = "Google Inc."
s.summary = "SUMMARY"
s.license = { :type => "Apache 2.0", :file => "LICENSE" }

# not published
#s.dependency "eDistantObject"

s.frameworks = "CoreData","CoreFoundation","CoreGraphics","Foundation","IOKit","QuartzCore","UIKit","XCTest"
s.source = { :git => "https://github.com/brettfazio/EarlGrey.git", :branch => "earlgrey2" }

s.source_files = "TestLib/**/*.{m,h}", "CommonLib/**/*.{m,h}", "AppFramework/**/*.h", "UILib/**/*.h"

s.public_header_files = "TestLib/**/*.h"

s.private_header_files = "AppFramework/**/*.h", "UILib/**/*.h", "CommonLib/**/*.h"

s.platform = :ios, '10.0'

end
