#
#  Be sure to run `pod spec lint Passbase.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name           = 'Passbase'
    spec.version        = '2.4.0'
    spec.summary        = 'Passbase helps you to uniquely identify your users.'
    spec.description    = 'Passbase completes a facial recognition and checks for a valid government identification document to uniquely identify people.'
    spec.homepage       = 'https://www.passbase.com'
    spec.license        = { type: 'custom', text: 'Passbase is Copyright 2019 Passbase, Inc.  It may not be modified.' }
    spec.author         = { 'Mathias J. Klenk' => 'mathias@passbase.com' }
    spec.platform       = :ios, '11.0'
    spec.swift_version  = '5.0'
    spec.source       = { :http => "https://button.passbase.com/__ios/Passbase_2.4.0.zip" }
    spec.requires_arc = true
    spec.source_files  = 'Passbase/**/*.{swift}'
    spec.resource_bundles = {
        'Passbase' => ['Passbase/**/*.{storyboard,png,gif,xcassets,ttf,xib,json,strings,bundle}']
    }

    spec.dependency 'ZoomAuthentication', '8.7.1'
    spec.dependency 'Microblink', '5.11.1'

    spec.vendored_frameworks = 'Passbase.xcframework'

end

