Pod::Spec.new do |s|
  s.name                  = 'podify-brotli'
  s.version               = '1.0.9'
  s.summary               = 'Google Brotli packaged as a CocoaPod'
  s.description           = <<-DESC
Google Brotli packaged as a CocoaPod
                       DESC
  s.homepage              = 'https://github.com/ivanmoskalev/podify-brotli'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Ivan Moskalev' => 'ivan.moskalev@gmail.com' }
  s.source                = { :git => 'https://github.com/ivanmoskalev/podify-brotli.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files          = 'brotli/c/common/*.{c,h}'
  s.public_header_files   = 'brotli/c/include/**/*.h'

  s.subspec 'common' do |sp|
    sp.source_files = 'brotli/c/common/*.{c,h}'
  end

  s.subspec 'dec' do |sp|
    sp.source_files = 'brotli/c/dec/*.{c,h}'
    sp.dependency 'podify-brotli/common'
  end

  s.subspec 'enc' do |sp|
    sp.source_files = 'brotli/c/enc/*.{c,h}'
    sp.dependency 'podify-brotli/common'
  end
end
