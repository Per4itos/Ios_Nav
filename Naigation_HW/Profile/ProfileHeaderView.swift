//
//  ProfileHeaderView.swift
//  Naigation_HW
//
//  Created by macOS on 03.09.2022.
//

import UIKit

class ProfileHeaderView: UIView{

    private lazy var avatarImageView: UIImageView = {
            let imageView = UIImageView(frame: CGRect(x: 16, y: 16, width: 140, height: 140))
            imageView.layer.cornerRadius = imageView.frame.size.width / 2
            imageView.clipsToBounds = true
            imageView.layer.borderWidth = 3
            imageView.layer.borderColor = UIColor.white.cgColor

            return imageView
        }()


        private lazy var nameLable: UILabel = {

            let lable = UILabel(frame: CGRect(x: 168, y: 27, width: 230, height: 35))
            lable.textColor = UIColor.black
            lable.font = UIFont.boldSystemFont(ofSize: 20)

            return lable

        }()

        private lazy var textLable: UILabel = {

            let lable = UILabel(frame: CGRect(x: 168, y: 118, width: 230, height: 35))
            lable.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            lable.textColor = .gray
            return lable

        }()

        private lazy var statusButton: UIButton = {

            let button = UIButton(frame: CGRect(x: 16, y: 172, width: 378, height: 51))
            button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
            button.backgroundColor = .systemBlue
            button.setTitleColor(.white, for: .normal)
            button.setTitle("Show status", for: .normal)
            button.layer.cornerRadius = 4
            button.layer.shadowOffset = CGSize(width: 4, height: 4)
            button.layer.shadowOpacity = 0.7
            button.layer.shadowRadius = 4
            button.layer.masksToBounds = false
            return button
        }()
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        private func setupView() {
            self.addSubview(self.avatarImageView)
            self.addSubview(self.nameLable)
            self.addSubview(self.textLable)
            self.addSubview(self.statusButton)

        }
        func setup(with profile: Profile) {
            self.textLable.text = profile.text
            self.nameLable.text = profile.name
            self.avatarImageView.image = profile.image
        }

        @objc private func buttonAction() {
            print(textLable.text!)
        }

}
