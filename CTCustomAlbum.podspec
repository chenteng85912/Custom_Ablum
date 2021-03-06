
Pod::Spec.new do |s|

  s.name         = "CTCustomAlbum"
  s.version      = "2.0.0"
  s.summary      = "CustomAlbum make with Photos.kit "

  s.homepage     = "https://github.com/chenteng85912/CTCustomAlbum"
  s.license      = "MIT"
  s.authors      = { "陈腾" => "chenteng85912@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/chenteng85912/CTCustomAlbum.git", :tag => "#{s.version}"}
  s.requires_arc = true

  s.frameworks = "Photos", "AVFoundation"

    #调用系统相机和相册
    s.subspec 'CTOnePhoto' do |ss|
        ss.source_files = "CTCustomAlbum/CTOnePhoto/*.{h,m}"
    end
    #定制化相册
    s.subspec 'CTCustomAlbum' do |ss|
        ss.source_files = "CTCustomAlbum/CTCustomAlbum/**/*.{h,m}"
        ss.resources = "CTCustomAlbum/CTCustomAlbum/Icon/*.{png,pdf}"
        ss.dependency 'CTCustomAlbum/CTOnePhoto'
    end
end
