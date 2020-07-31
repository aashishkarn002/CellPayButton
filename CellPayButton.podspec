Pod::Spec.new do |s|
  s.name             = "CellPayButton"
  s.version          = "0.1.0"
  s.summary          = "CellPayButton SDK is used to pay for third party payment"
  s.description      = <<-DESC
  This is CellPayButton Sdk which can be integrated in any ios project for third party payment with cellpay.
                       DESC

  s.homepage         = "https://github.com/aashishkarn002/CellPayButton"
 
  s.license          = 'MIT'
  s.author           = { "Aashish Karn" => "aashish.karn@cellcom.net.np" }
  s.source           = { :git => "https://github.com/aashishkarn002/CellPayButton.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/AashishKarn16'

  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.swift_version = '5.0'
  s.source_files = 'CellPayButton/Classes/**/*.{swift}'
  s.resources = 'CellPayButton/Resources/**/*.{storyboard,xcassets}'
  
  
end
