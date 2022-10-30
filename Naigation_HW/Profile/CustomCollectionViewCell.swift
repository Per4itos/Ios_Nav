//
//  CustomCollectionViewCell.swift
//  Naigation_HW
//
//  Created by macOS on 21.10.2022.
//

import Foundation
import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    struct Photos {
        let image0: UIImage?
        
    }
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with photo: Photos) {
        self.imageView.image = photo.image0
    }
    
    private func setupView() {
        self.contentView.addSubview(self.imageView)
       
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.imageView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.imageView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            self.imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
        ])
    }
}
