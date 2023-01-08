//
//  Header.swift
//  setiing
//
//  Created by Mac on 08/01/23.
//

import UIKit

class Header: UITableViewHeaderFooterView {
    let label = UILabel()
    let label2 = UILabel()
    let image = UIImageView()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true
        image.image = UIImage(named: "header")
        image.layer.cornerRadius = 40
        image.clipsToBounds = (YESSTR != 0)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        label.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive = true
        label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        label.text = "Muminov Baxtiyor"
        label.font = .systemFont(ofSize: 25)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive = true
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        label2.text = "Apple ID, iCloud, Media & Purchases"
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
