//
//  MoviesViewTableViewCell.swift
//  Movies
//
//  Created by Jackeline Pires De Lima on 01/08/22.
//

import UIKit

class MoviesViewTableViewCell: UITableViewCell {
    
    static let identifier = "MoviesViewTableViewCell"
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "UILabel"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .red
        addSubview(label)
        
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
