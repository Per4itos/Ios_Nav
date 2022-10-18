//
//  PostHeaderView.swift
//  Naigation_HW
//
//  Created by macOS on 24.09.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    struct ViewModel {
        let author: String
        let description: String
        let imageView: UIImage?
        let likes: String?
        let views: String?
        let likesImage: UIImage?
        let viewsImage: UIImage?
        
    }
    
    private lazy var lImage: UIImageView = {
        
        let imageLikse = UIImageView()
        imageLikse.translatesAutoresizingMaskIntoConstraints = false
        return imageLikse
    }()
    
    private lazy var vImage: UIImageView = {
        
        let imageViews = UIImageView()
        imageViews.translatesAutoresizingMaskIntoConstraints = false
        
        return imageViews
    }()
    
    private lazy var titleLable: UILabel = {
        let title = UILabel()
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    private lazy var text: UILabel = {
        let text = UILabel()
        text.textColor = .gray
        text.numberOfLines = 20
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    private lazy var someImage: UIImageView = {
        let someImage = UIImageView()
        someImage.translatesAutoresizingMaskIntoConstraints = false
        
        return someImage
    }()
    private lazy var likes: UITextField = {
        let likes = UITextField()
        likes.translatesAutoresizingMaskIntoConstraints = false
        
        return likes
    }()
    
    private lazy var views: UITextField = {
        let views = UITextField()
        views.translatesAutoresizingMaskIntoConstraints = false
        
        return views
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with viewModel: ViewModel) {
        self.titleLable.text = viewModel.author
        self.text.text = viewModel.description
        self.someImage.image = viewModel.imageView
        self.likes.text = viewModel.likes
        self.views.text = viewModel.views
        self.lImage.image = viewModel.likesImage
        self.vImage.image = viewModel.viewsImage
    }
    
    func changeText(_ text: String) {
        self.text.text = text
    }
    
    
    private func setupView() {
        
        self.contentView.addSubview(self.lImage)
        self.contentView.addSubview(self.vImage)
        self.contentView.addSubview(self.titleLable)
        self.contentView.addSubview(self.text)
        self.contentView.addSubview(self.likes)
        self.contentView.addSubview(self.views)
        self.contentView.addSubview(self.someImage)
        
        NSLayoutConstraint.activate([
            self.titleLable.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5),
            self.titleLable.leftAnchor.constraint(equalTo: self.contentView.leftAnchor,constant: 10),
            
            self.someImage.topAnchor.constraint(equalTo: self.titleLable.bottomAnchor),
            self.someImage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.someImage.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            
            self.text.topAnchor.constraint(equalTo: self.someImage.bottomAnchor, constant: 10),
            self.text.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.text.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            
            self.lImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.lImage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            
            self.likes.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.likes.leftAnchor.constraint(equalTo: self.lImage.rightAnchor),
            
            self.vImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.vImage.rightAnchor.constraint(equalTo: self.views.leftAnchor),
            
            self.views.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.views.rightAnchor.constraint(equalTo: self.contentView.rightAnchor)
        ])
    }
}
