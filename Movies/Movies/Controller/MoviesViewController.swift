//
//  MoviesViewController.swift
//  Movies
//
//  Created by Jackeline Pires De Lima on 31/07/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    private var theView: MoviesView {
        self.view  as! MoviesView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        let theView = MoviesView()
        self.view = theView
    }
}

