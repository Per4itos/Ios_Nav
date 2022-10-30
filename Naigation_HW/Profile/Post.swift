//
//  Post.swift
//  Naigation_HW
//
//  Created by macOS on 23.09.2022.
//

import UIKit


    

var viewModel: [PostTableViewCell.ViewModel] = [
    PostTableViewCell.ViewModel(author: "horrorzone.ru", description: "Фильм также известен под названиями: The Swarm.Виржини живет на ферме со своими детьми и выращивает кузнечиков, чтобы делать из них муку. Но все меняется, когда она обнаруживает, что у саранчи - вкус к крови...", imageView: UIImage(named: "Roy"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye.fill")),
    PostTableViewCell.ViewModel(author: "sostav.ru", description: "«Нетология» провела первый масштабный ребрендинг — лепестков у лого-ромашки стало меньше", imageView: UIImage(named: "netology"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye.fill")),
    PostTableViewCell.ViewModel(author: "ivi.ru", description: "Фильм Один дома 2: Затерянный в Нью-Йорке смотреть онлайн.Культовая комедия Криса Коламбуса с Маколеем Калкиным в главной роли.", imageView: UIImage(named: "3"), likes: "123", views: "321", likesImage: UIImage(systemName: "heart.fill"), viewsImage: UIImage(systemName: "eye.fill"))
]



var posts: [PhotosTableViewCell.ViewPhoto] = [PhotosTableViewCell.ViewPhoto()]

var photos : [CustomCollectionViewCell.Photos] = [
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image0")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image1")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image2")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image3")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image4")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image5")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image6")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image7")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image8")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image9")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image10")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image11")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image12")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image13")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image14")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image15")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image16")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image17")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image18")),
    CustomCollectionViewCell.Photos(image0: UIImage(named: "image19")),
]
