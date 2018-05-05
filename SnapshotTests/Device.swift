//
//  Device.swift
//  SnapshotTests
//
//  Created by Jain, Aaina on 5/1/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import Foundation
import UIKit

enum Device: String {
    case iPhone4
    case iPhone5
    case iPhone6
    
    func size() -> CGSize {
        switch self {
        case .iPhone4:
            return CGSize(width: 320, height: 480)
        case .iPhone5:
            return CGSize(width: 320, height: 568)
        case .iPhone6:
            return CGSize(width: 375, height: 667)
        }
    }
}
