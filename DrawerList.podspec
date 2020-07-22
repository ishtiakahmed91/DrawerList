Pod::Spec.new do |spec|
  spec.name         = "DrawerList"
  spec.version      = "0.1.1"
  spec.summary      = "DrawerList presents a list of items in a bottom drawer."

  spec.description  = <<-DESC
                        DrawerList presents a list of items in a bottom drawer.
                   DESC

  spec.homepage     = "https://github.com/ishtiakahmed91/DrawerList"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "Ishtiak Ahmed" => "ishtameen@gmail.com" }
  spec.ios.deployment_target = '9.0'
  spec.source       = { :git => "https://github.com/ishtiakahmed91/DrawerList", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/DrawerList/*.swift"
  spec.exclude_files = "Package.swift"
end
