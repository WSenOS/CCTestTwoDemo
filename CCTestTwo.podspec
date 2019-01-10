

Pod::Spec.new do |s|

 
  s.name         = "CCTestTwo"
  s.version      = "0.0.1"
  s.summary      = "A short description of CCTestTwo."

  s.description  = <<-DESC
			first demo
                   DESC

  s.homepage     = "http://github.com"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


 
  s.author             = { "wangsen" => "wangsenwd@hotmail.com" }
  
  s.platform     = :ios, "9.0"

  s.source       = { :git => "git@github.com:WSenOS/CCTestTwoDemo.git", :tag => "#{s.version}" }

  s.source_files  = "CCTestTwo/*"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  s.resources = "Resources/*"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.frameworks = "UIKit", "Foundation"

  # s.library   = "iconv"
  s.libraries = "iconv", "xml2"

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
