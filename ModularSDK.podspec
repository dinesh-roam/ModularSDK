Pod::Spec.new do |spec|
  spec.name         = 'ModularSDK'
  spec.version      = '1.0.0'
  spec.summary      = 'A modular SDK with CoreModule and optional FeatureModule.'
  spec.homepage     = 'https://github.com/dinesh-roam/ModularSDK'
  spec.author       = { 'Your Name' => 'your_email@example.com' }
  spec.source       = { :git => 'https://github.com/dinesh-roam/ModularSDK.git', :branch => 'main' }
  spec.ios.deployment_target = '11.0'
  
  # License (Optional, remove if not needed)
  spec.license = { :type => 'MIT' }

  # ModularCoreModule
  spec.subspec 'ModularCoreModule' do |core|
    core.vendored_frameworks = 'ModularCoreModule.xcframework'
  end
  
  # FeatureModule
  spec.subspec 'FeatureModule' do |feature|
    feature.vendored_frameworks = 'FeatureModule.xcframework'
  end
  
  spec.requires_arc = true
end
