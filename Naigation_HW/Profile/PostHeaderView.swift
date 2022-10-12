//
//  PostHeaderView.swift
//  Naigation_HW
//
//  Created by macOS on 24.09.2022.
//

import UIKit

class PostHeaderView: UITableViewHeaderFooterView {

    struct ViewModel {
        let author: String
        let description: String
        let imageView: UIImage
        let likes: String
        let views: String
        
    }

    private lazy var titleLable: UILabel = {
        let title = UILabel()
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    private lazy var text: UITextField = {
        let text = UITextField()
        text.textColor = .gray
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    private lazy var someImage: UIImageView = {
        let someImage = UIImageView()
//        image.translatesAutoresizingMaskIntoConstraints = false
        
        return someImage
    }()
    private lazy var likes: UILabel = {
        let likes = UILabel()
        likes.textColor = .black
        likes.translatesAutoresizingMaskIntoConstraints = false
        
        return likes
    }()
    
    private lazy var views: UILabel = {
        let views = UILabel()
        views.textColor = .black
        views.translatesAutoresizingMaskIntoConstraints = false
        
        return views
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
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
    }
    
    private func setupView() {
        
        self.addSubview(self.titleLable)
        self.addSubview(self.text)
        self.addSubview(self.likes)
        self.addSubview(self.views)
        self.addSubview(self.someImage)
        
        NSLayoutConstraint.activate([
        
            self.titleLable.topAnchor.constraint(equalTo: self.topAnchor),
            self.titleLable.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.titleLable.bottomAnchor.constraint(equalTo: self.someImage.topAnchor),
            
            self.someImage.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.someImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.someImage.bottomAnchor.constraint(equalTo: self.text.topAnchor),
            
            self.text.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.text.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.text.bottomAnchor.constraint(equalTo: self.likes.topAnchor),
            
            self.likes.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.likes.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.views.topAnchor.constraint(equalTo: self.text.bottomAnchor),
            self.views.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.views.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        
        
        
        
        ])
        
    }
    
    
}
