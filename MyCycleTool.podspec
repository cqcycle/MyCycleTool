

Pod::Spec.new do |s|

s.name         = "MyCycleTool"
s.version      = "1.0.0"
s.summary      = "MyCycleTool."
s.homepage     = "https://github.com/cqcycle/MyCycleTool.git"
s.license      = "MIT"
s.author       = { "zhoubo" => "15696564260@163.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/cqcycle/MyCycleTool.git", :tag => s.version.to_s }

s.source_files  = "MyCycleTool", "MyCycleTool/**/*.{h,m}"
s.public_header_files = "MyCycleTool/**/*.h"
# s.frameworks = "UIKit", "Foundation"
s.requires_arc = true

end
