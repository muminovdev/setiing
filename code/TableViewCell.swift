//
//  TableViewCell.swift
//  setiing
//
//  Created by Mac on 07/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    let mainView = UIView()
    let image = UIImageView()
    let label = UILabel()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(mainView)
        
        mainView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        
        image.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 10).isActive = true
        image.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 10).isActive = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        
        label.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
