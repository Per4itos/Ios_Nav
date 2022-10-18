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
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    private var viewModel: [PostTableViewCell.ViewModel] = [
        PostTableViewCell.ViewModel(author: "horrorzone.ru", description: "Фильм также известен под названиями: The Swarm.Виржини живет на ферме со своими детьми и выращивает кузнечиков, чтобы делать из них муку. Но все меняется, когда она обнаруживает, что у саранчи - вкус к крови...", imageView: UIImage(named: "Roy"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye")),
        PostTableViewCell.ViewModel(author: "sostav.ru", description: "«Нетология» провела первый масштабный ребрендинг — лепестков у лого-ромашки стало меньше", imageView: UIImage(named: "netology"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye")),
        PostTableViewCell.ViewModel(author: "ivi.ru", description: "Фильм Один дома 2: Затерянный в Нью-Йорке смотреть онлайн.Культовая комедия Криса Коламбуса с Маколеем Калкиным в главной роли.", imageView: UIImage(named: "3"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye"))
    ]
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.backgroundColor = .lightGray
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        return profileHeaderView
    }()
    
    private let profile = Profile1(name: "Hipster Cat", text: "Waiting for something...")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Profile"
        self.view.addSubview(self.profileHeaderView)
        self.view.addSubview(self.tableView)
        self.profileHeaderView.setup(with: self.profile)
        self.navigationController?.navigationBar.backgroundColor = .white
        self.setupHeader()
    }
    
    private func setupHeader() {
        
        NSLayoutConstraint.activate([
            self.profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.profileHeaderView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.profileHeaderView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.profileHeaderView.heightAnchor.constraint(equalToConstant: 200),
            
            self.tableView.topAnchor.constraint(equalTo: self.profileHeaderView.bottomAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! PostTableViewCell
        let post = viewModel[indexPath.row]
        cell.setup(with: post)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 550
    }
}












    
    
    
