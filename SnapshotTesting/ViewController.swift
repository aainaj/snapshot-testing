//
//  SnapshotController.swift
//  Snapshot Testing
//
//  Created by Jain, Aaina on 4/23/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let beachView = BeachView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Snapshot Testing"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        beachView.update(with: beachData())
    }
    
    func setup() {
        view.addSubview(titleLabel)
        view.addSubview(beachView)
        setConstraints()
    }
    
    func setConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
        titleLabel.leadingAnchor
            .constraint(equalTo: view.leadingAnchor,
                        constant: 16.0).isActive = true
        titleLabel.trailingAnchor
            .constraint(equalTo: view.trailingAnchor,
                        constant: -16.0).isActive = true
        
        beachView.translatesAutoresizingMaskIntoConstraints = false
        beachView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        beachView.leadingAnchor
            .constraint(equalTo: view.leadingAnchor,
                        constant: 16.0).isActive = true
        beachView.trailingAnchor
            .constraint(equalTo: view.trailingAnchor,
                        constant: -16.0).isActive = true
    }
    
    private func beachData() -> Beach {
        let details = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
        """
        
        let beach = Beach(name: "Lorem ipsum dolor sit amet",
                          details: details,
                          imageURL: imageURLFromBundle())
        return beach
    }
    
}

extension ViewController {
    private class ClassBundle {}
    
     func imageURLFromBundle(
        name: String = "beach",
        withExtension: String = "jpg") -> URL {
        guard let url = Bundle(for: ClassBundle.self)
            .url(forResource: name, withExtension: withExtension) else {
                preconditionFailure("Couldn't load \(name) image from resources")
        }
        
        return url
    }
}
