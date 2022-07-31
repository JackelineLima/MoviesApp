//
//  MoviesView.swift
//  Movies
//
//  Created by Jackeline Pires De Lima on 31/07/22.
//

import UIKit

class MoviesView: UIView {

    init() {
        super.init(frame: .zero)
        
        renderView()
    }
    
    private func renderView() {
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
