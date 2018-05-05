//
//  AJSnapshotTestCase.swift
//  Snapshot TestingTests
//
//  Created by Jain, Aaina on 4/24/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import FBSnapshotTestCase

class AJSnapshotTestCase: FBSnapshotTestCase {
    override func setUp() {
        super.setUp()
        isDeviceAgnostic = true
//        usesDrawViewHierarchyInRect = true
        recordMode = recordingMode
    }
    
    var recordingMode: Bool {
        return false
    }
    
    func verify(view: UIView) {
//        FBSnapshotVerifyView(view, identifier: "teaser", tolerance: 2)
        FBSnapshotVerifyView(view, identifier: "teaser")
    }
    
}
