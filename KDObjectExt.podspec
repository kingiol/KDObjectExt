Pod::Spec.new do |s|
  s.name         = "KDObjectExt"
  s.version      = "1.0.0"
  s.summary      = "A elegant way set extra value for NSObject."
  s.description  = <<-DESC
    now just about extra value, but we're love to PRs!
                   DESC
  s.homepage     = "https://github.com/kingiol/KDObjectExt"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "kingiol" => "kingxiaokang@gmail.com" }
  s.social_media_url   = "http://twitter.com/kingiol"

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/kingiol/KDObjectExt.git", :tag => s.version }
  s.source_files  = "KDObjectExt/*.swift"
  s.framework  = "Foundation"

end
