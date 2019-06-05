Pod::Spec.new do |s|

  s.name = "EarlGrey"
  s.version = "2.0.10"
  s.summary = "iOS UI Automation Test Framework"
  s.homepage = "https://github.com/brettfazio/EarlGrey"
  s.author = "Google Inc."
  s.summary = "EarlGrey is a native iOS UI automation test framework that enables you to write clear, concise tests.\\n\\nWith the EarlGrey framework, you have access to enhanced synchronization features. EarlGrey automatically synchronizes with the UI, network requests, and various queues, but still allows you to manually implement customized timings, if needed.\\n\\nEarlGrey’s synchronization features help ensure that the UI is in a steady state before actions are performed. This greatly increases test stability and makes tests highly repeatable.\\n\\nEarlGrey works in conjunction with the XCTest framework and integrates with Xcode’s Test Navigator so you can run tests directly from Xcode or the command line (using xcodebuild)."
  s.license = { :type => "Apache 2.0", :file => "LICENSE" }

  # Download zipped Frameworks from GitHub.
  s.source = { :http => "https://www.github.com/brettfazio/EarlGrey/releases/download/2.0.0/EarlGrey.zip" }

  #s.dependency "eDistantObject"

  s.frameworks = "CoreData","CoreFoundation","CoreGraphics","Foundation","IOKit","QuartzCore","UIKit","XCTest"

  #s.preserve_paths = "EarlGrey/CHANGELOG.md", "EarlGrey/LICENSE", "EarlGrey/README.md"
  s.preserve_paths = "EarlGrey/README.md"
  
  #subspec 'AppFramework' do |af|
   
  #end
  
  #subspec 'TestLib' do |tl|
    
  #end

  s.vendored_frameworks = "AppFramework.framework", "TestFramework.framework"
  # REMOVE THE LINE BELOW EVENTUALLY
  #s.vendored_libraries = "libeDistantObject.a"
  s.platform = :ios, '10.0'
end
