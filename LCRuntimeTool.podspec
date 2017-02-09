Pod::Spec.new do |s|
  s.name         = "LCRuntimeTool"
  s.version      = "0.0.1"
  s.summary      = "Runtime Tool"
  s.homepage     = "https://github.com/Little-Captain/LCRuntimeTool"
  s.license      = "MIT"
  s.author       = { "Little-Captain" => "littlecaptain@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Little-Captain/LCRuntimeTool.git", :tag => s.version }
  s.source_files = "LCRuntimeTool/*.{h,m}"
  s.requires_arc = true
end
