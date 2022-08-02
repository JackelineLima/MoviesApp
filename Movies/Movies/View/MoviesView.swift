//
//  MoviesView.swift
//  Movies
//
//  Created by Jackeline Pires De Lima on 31/07/22.
//

import UIKit

class MoviesView: UIView {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.register(MoviesViewTableViewCell.self, forCellReuseIdentifier: MoviesViewTableViewCell.identifier)
        return tableView
    }()

    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    private func setupView() {
        setupAddView()
        setupConstraints()
        renderView()
    }
    
    private func setupAddView() {
        addSubview(tableView)
    }
    
    private func setupConstraints() {
        subviews.forEach{($0.translatesAutoresizingMaskIntoConstraints = false)}
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func renderView() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MoviesView: UITableViewDelegate, UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MoviesViewTableViewCell.identifier, for: indexPath) as? MoviesViewTableViewCell else {
            return UITableViewCell()
        }

        return cell
    }
}
