//
//  Beach+SnapshotTestData.swift
//  SnapshotTests
//
//  Created by Jain, Aaina on 4/30/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import Foundation
@testable import SnapshotTesting

extension URL {
    
    private class ClassBundle {}
    
    static func testImageDataFromBundle(
        name: String = "hawaiian-beach",
        withExtension: String = "jpeg") -> URL {
        guard let url = Bundle(for: ClassBundle.self)
            .url(forResource: name, withExtension: withExtension) else {
                preconditionFailure("Couldn't load \(name) image from resources")
        }
        
        return url
    }
    
}

extension Beach {
    
    static func testDataFromBundle(name: String = "Lorem ipsum dolor sit amet",
                                   details: String = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
        """,
                                   imageURL: URL = URL.testImageDataFromBundle()) -> Beach {
        return Beach(name: name,
                     details: details,
                     imageURL: imageURL)
    }
    
}
