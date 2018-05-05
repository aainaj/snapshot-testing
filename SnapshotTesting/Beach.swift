//
//  Beach.swift
//  Snapshot Testing
//
//  Created by Jain, Aaina on 4/24/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import Foundation

public struct Beach {
    public let name: String
    public let details: String
    public let imageURL: URL
    
    public init(name: String, details: String, imageURL: URL) {
        self.name = name
        self.details = details
        self.imageURL = imageURL
    }
}
