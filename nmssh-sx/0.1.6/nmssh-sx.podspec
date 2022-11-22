Pod::Spec.new do |spec|
  spec.name         = "nmssh-sx"
  spec.version      = "0.1.6"
  spec.summary      = "Copy of NMSSH for the Sendlinx project with M1 support."
  spec.homepage     = "https://github.com/NMSSH/NMSSH"
  spec.license      = 'MIT'
  spec.authors      = { "Christoffer Lejdborg" => "hello@9muses.se", "Tommaso Madonia" => "tommaso@madonia.me", "Vlad Orlov" => "vorlovx@gmail.com" }

  spec.source       = { :git => 'https://github.com/vvorlov/nmssh-sx.git', :tag => spec.version.to_s }

  spec.requires_arc = true
  spec.platform = :osx

  spec.source_files = 'NMSSH', 'NMSSH/**/*.{h,m}'
  spec.public_header_files  = 'NMSSH/*.h', 'NMSSH/Protocols/*.h', 'NMSSH/Config/NMSSHLogger.h'
  spec.private_header_files = 'NMSSH/Config/NMSSH+Protected.h', 'NMSSH/Config/socket_helper.h'
  spec.libraries    = 'z'
  spec.framework    = 'CFNetwork'

  spec.osx.deployment_target  = '10.15'
  spec.osx.vendored_libraries = 'NMSSH-OSX/Libraries/lib/libssh2.a', 'NMSSH-OSX/Libraries/lib/libssl.a', 'NMSSH-OSX/Libraries/lib/libcrypto.a'
  spec.osx.source_files       = 'NMSSH-OSX', 'NMSSH-OSX/Libraries/**/*.h'
  spec.osx.public_header_files  = 'NMSSH-OSX/Libraries/**/*.h'

  spec.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
  }

end
