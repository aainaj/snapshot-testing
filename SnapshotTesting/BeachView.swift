//
//  BeachView.swift
//  Snapshot Testing
//
//  Created by Jain, Aaina on 4/23/18.
//  Copyright © 2018 Jain, Aaina. All rights reserved.
//

import Foundation
import UIKit

class BeachView: UIView {
    
    let name = UILabel()
    let details = UILabel()
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Problem while creating view")
    }
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addViewsToParent(imageView, name, details)
        
        setupStyleAttributes()
        
        setupConstraints()
    }
    
    private func setupStyleAttributes() {
        details.numberOfLines = 0
        
        name.addAttributes(with: .black, fontSize: 18)
        
        details.addAttributes(with: .black, fontSize: 16)
    }
    
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        name.translatesAutoresizingMaskIntoConstraints = false
        name.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16).isActive = true
        name.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        name.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        details.translatesAutoresizingMaskIntoConstraints = false
        details.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 16).isActive = true
        details.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        details.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        details.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func update(with beach: Beach) {
        update(with: beach.imageURL)
        name.text = beach.name
        details.text = beach.details
    }
    
    private func update(with url: URL) {
        do {
            let data = try Data(contentsOf: url)
            imageView.image = UIImage(data: data)
        } catch {
            preconditionFailure("\(error)")
        }
    }
    
}

extension UIView {
    
    func addViewsToParent(_ views: UIView...) {
        views.forEach { view in
            addSubview(view)
        }
    }
    
}

extension UILabel {
    
    func addAttributes(with color: UIColor, fontSize: CGFloat) {
        textColor = color
        font = UIFont.systemFont(ofSize: fontSize)
        textAlignment = .center
    }
    
}
