//
//  BeachViewSnapshotTests.swift
//  Snapshot TestingTests
//
//  Created by Jain, Aaina on 4/25/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import XCTest
@testable import SnapshotTesting

class BeachViewSnapshotTests: AJSnapshotTestCase {
    
    let origin = CGPoint(x: 0, y: 0)
    
    override var recordingMode: Bool {
        return false
    }
    
    func testIsShowingCorrectlyOn4sDevices() {
        makeSnapshot(for: CGRect(origin: origin, size: Device.iPhone4.size()))
    }
    
    func testIsShowingCorrectlyOn5sDevices() {
        makeSnapshot(for: CGRect(origin: origin, size: Device.iPhone5.size()))
    }
    
    func testIsShowingCorrectlyOn6Devices() {
        makeSnapshot(for: CGRect(origin: origin, size: Device.iPhone6.size()))
    }
    
    func testIsShowingCorrectlyOn6Devices_WithDifferentName() {
        let frame = CGRect(origin: origin, size: Device.iPhone6.size())
        let testData = Beach.testDataFromBundle(name: "Aaina")
        makeSnapshot(for: frame, with: testData)
    }
    
    private func makeSnapshot(for frame: CGRect, with testData: Beach = Beach.testDataFromBundle()) {
        let containerView = UIView()
        containerView.frame = frame
        let view = BeachView()
        containerView.addSubview(view)
        containerView.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50).isActive = true
        view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50).isActive = true
        view.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        view.update(with: testData)
        verify(view: containerView)
    }
    
}
