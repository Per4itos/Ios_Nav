//
//  ProfileViewController.swift
//  Naigation_HW
//
//  Created by macOS on 03.09.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
  
    


    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 25.0


//        tableView.delegate = self

        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Post")
        tableView.register(PostHeaderView.self, forHeaderFooterViewReuseIdentifier: "HeaderView")
        tableView.register(CustomTableViewHeder.self, forCellReuseIdentifier: "CustomCell")
        tableView.register(PostHeaderView.self, forCellReuseIdentifier: "DefaultCell")
        
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 250
        tableView.translatesAutoresizingMaskIntoConstraints = false




        return tableView
    }()

    private lazy var profileHeaderView: ProfileHeaderView = {
           let profileHeaderView = ProfileHeaderView()
           profileHeaderView.backgroundColor = .lightGray
         profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
           return profileHeaderView
       }()

       private let profile = Profile1(name: "Hipster Cat", text: "Waiting for something...")

    private var viewModel: [Post3] = [ Post3(), Post3(), Post3(), Post3() ]


       override func viewDidLoad() {
           super.viewDidLoad()
          
           self.navigationItem.title = "Profile"
           self.view.addSubview(self.profileHeaderView)
           self.profileHeaderView.setup(with: self.profile)



           self.setupHeader()
       }

       private func setupHeader() {
           self.view.backgroundColor = .systemBackground
           self.view.addSubview(self.tableView)

           NSLayoutConstraint.activate([

            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
               profileHeaderView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
               profileHeaderView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
               profileHeaderView.heightAnchor.constraint(equalToConstant: 200),

               tableView.topAnchor.constraint(equalTo: self.profileHeaderView.bottomAnchor),
                         tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
                         tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
                         tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),

           ])
           }
}


extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomCell", for: indexPath)as? CustomTableViewHeder else {
        
            let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DefaultCell", for: IndexPath)
       
        }
                
        let viewModel = PostHeaderView.ViewModel(author: "123", description: "123", imageView: UIImage(named: "netology")!, likes: "2", views: "3")
        self.cell.setup(with: viewModel)
           
        return cell
    }
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            self.viewModel.count
}
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        CGFloat(self.viewModel.count)
    }
    
    }












    
    
    //    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.setupView2()
//
//
//    }
//
//    private func setupView2() {
//        self.view.addSubview(tableView)
//
//
//        NSLayoutConstraint.activate([
//
//            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
//            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
//            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//
//
//
//
//
//
//
//
//        ])
//
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
//    private lazy var profileHeaderView: ProfileHeaderView = {
//        let profileHeaderView = ProfileHeaderView(frame: CGRect(x: 0, y: 70, width: 414, height: 896))
//        profileHeaderView.backgroundColor = .lightGray
//      profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
//        return profileHeaderView
//    }()
//
//    private let profile = Profile(name: "Hipster Cat", text: "Waiting for something...")
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.navigationItem.title = "Profile"
//        self.view.backgroundColor = .systemBackground
//
//        view.backgroundColor = .systemBackground
//        self.view.addSubview(self.profileHeaderView)
//        self.profileHeaderView.setup(with: self.profile)
//
////        let profileHeaderViewContraints = self.profileHeaderViewContraints()
////        NSLayoutConstraint.activate(profileHeaderViewContraints)
////
//
//        self.setupHeader()
//    }
//
//    private func setupHeader() {
//
//        NSLayoutConstraint.activate([
//
//            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
//
//            profileHeaderView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
//
//            profileHeaderView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
//
//         profileHeaderView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
//
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 200)
//        ])
//
//
//    }
//
    

