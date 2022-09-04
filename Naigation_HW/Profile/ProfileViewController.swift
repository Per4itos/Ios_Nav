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
        return profileHeaderView
    }()
    
    private let profile = Profile(name: "Hipster Cat", text: "Waiting for something...")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Profile"
        view.backgroundColor = .white          
        self.view.addSubview(self.profileHeaderView)
        self.navigationController?.navigationBar.backgroundColor = .white
        self.profileHeaderView.setup(with: self.profile)
    }
}
