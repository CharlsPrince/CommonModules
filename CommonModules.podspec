Pod::Spec.new do |s|
  s.name             = 'CommonModules'
  s.version          = '0.0.1'
  s.summary          = '测试PodSpec'
  s.homepage         = 'https://github.com/CharlsPrince/CommonModules'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CharlsPrince' => '961629701@qq.com' }
  s.source           = { :git => 'https://github.com/CharlsPrince/CommonModules.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'CommonModules/**/*'
  s.public_header_files = 'CommonModules/**/*.h'
  
  s.subspec 'LoginModule' do |ss|
    ss.source_files = 'CommonModules/LoginModule/*.{h,m}'
    ss.public_header_files = 'CommonModules/LoginModule/*.h'
    ss.frameworks = 'Foundation'
  end

  s.subspec 'RegisterModule' do |ss|
    ss.source_files = 'CommonModules/RegisterModule'
    ss.public_header_files = 'CommonModules/RegisterModule/*.h'
    ss.dependency 'CommonModules/LoginModule'
  end



  # s.resource_bundles = {
  #   'CommonModules' => ['CommonModules/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
