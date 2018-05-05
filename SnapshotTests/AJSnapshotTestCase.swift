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
    //  Set usesDrawViewHierarchyInRect when you are testing UIVisualEffects or UIAppearance
    //  usesDrawViewHierarchyInRect = true
        recordMode = recordingMode
    }
    
    var recordingMode: Bool {
        return false
    }
    
    func verify(view: UIView) {
        // set tolerance to x if you don't care about x% difference in snapshots
       // FBSnapshotVerifyView(view, identifier: "teaser", tolerance: 2)
        FBSnapshotVerifyView(view, identifier: "teaser")
    }
    
}
