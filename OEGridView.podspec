Pod::Spec.new do |s|
  s.name         = "OEGridView"
  s.version      = "0.0.1"
  s.summary      = "A short description of OEGridView."
  s.homepage     = "http://EXAMPLE/OEGridView"
  s.license      = 'BSD'
  s.author       = { "James Dumay" => "james.w.dumay@gmail.com" }
  s.source       = { :git => "https://github.com/i386/OEGridView.git" }
  s.platform     = :osx, '10.8'
  # s.source_files = '**/*.{h,m}'
  s.public_header_files = '**/*.h'
  # s.requires_arc = false
  
  s.subspec 'arc' do |sp|
    sp.source_files = ‘*.{h,m}’
    sp.exclude_files = ‘NSColor+OEAdditions.{h,m}’
    sp.requires_arc = true
  end

  s.subspec 'no-arc' do |sp|
    sp.source_files = 'NSColor+OEAdditions.{h,m}'
    sp.requires_arc = false
  end
end
