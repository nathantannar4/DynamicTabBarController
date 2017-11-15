
Pod::Spec.new do |s|

    # 1 - Specs
    s.platform = :ios
    s.ios.deployment_target = '9.0'
    s.name = 'DynamicTabBarController'
    s.summary = "A dynamic UITabBarController"
    s.description  = "A must use TabBarController if you plan on dynamically changing the ViewControllers or want a TabBarController similar to other AAA apps"
    s.requires_arc = true
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

    # 2 - Version
    s.version = "1.0.0"

    # 3 - License
    s.license = { :type => "MIT", :file => "LICENSE" }

    # 4 - Author
    s.author = { "Nathan Tannar" => "nathantannar4@gmail.com" }

    # 5 - Homepage
    s.homepage = "https://github.com/nathantannar4/DynamicTabBarController"

    # 6 - Source
    s.source = { :git => "https://github.com/nathantannar4/DynamicTabBarController.git", :tag => "#{s.version}"}

    # 7 - Dependencies
    s.framework = "UIKit"

    # 8 - Source Files
    s.source_files = "DynamicTabBarController/**/*.{swift}"

    # 9 - Resources

end
