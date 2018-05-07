//
//  ViewControllerSnapshotTests.swift
//  SnapshotTests
//
//  Created by Apple on 5/7/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import XCTest
@testable import SnapshotTesting

class ViewControllerSnapshotTests: AJSnapshotTestCase {
    
    let origin = CGPoint(x: 0, y: 0)
    
    override var recordingMode: Bool {
        return false
    }

    func testControllerIsShowingCorrectlyOniPhone6Devices() {
        let controller = ViewController()
        controller.view.frame = CGRect(origin: origin, size: Device.iPhone6.size())
        verify(view: controller.view)
    }
    
    func testBlurEffectOnController() {
        let controller = ViewController()
        controller.view.frame = CGRect(origin: origin, size: Device.iPhone6.size())
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = controller.view.frame
        controller.view.addSubview(blurView)
        verify(view: controller.view)
    }
    
}
