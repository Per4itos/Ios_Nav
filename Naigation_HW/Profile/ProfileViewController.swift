//
//  ProfileViewController.swift
//  Naigation_HW
//
//  Created by macOS on 03.09.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 70, width: 414, height: 896))
        profileHeaderView.backgroundColor = .lightGray
      profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        return profileHeaderView
    }()
    
    private let profile = Profile(name: "Hipster Cat", text: "Waiting for something...")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .systemBackground

        view.backgroundColor = .systemBackground
        self.view.addSubview(self.profileHeaderView)
        self.profileHeaderView.setup(with: self.profile)
      
//        let profileHeaderViewContraints = self.profileHeaderViewContraints()
//        NSLayoutConstraint.activate(profileHeaderViewContraints)
//
        
        self.setupHeader()
    }
    
    private func setupHeader() {
        
        NSLayoutConstraint.activate([
      
            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            
            profileHeaderView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
        
            profileHeaderView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
        
//            profileHeaderView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
//            
            profileHeaderView.heightAnchor.constraint(equalToConstant: 200)
        ])
        

    }
    
    
}
