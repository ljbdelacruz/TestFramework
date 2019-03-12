//
//  APIViewController.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit
import BaseCodeAPI

class APIViewController: UIViewController {
    var presenter:APIVCPresenter!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension APIViewController:APIVCView{
    func successLoadMovieInfo(movie: MovieResponse) {
        print("Movie Info")
    }
    
    func failedLoadMovieInfo(message: String) {
        print("Message");
    }
    
    func successLoadAllMovie(movies: [MovieResponse]) {
        print(movies);
    }
    
    func failedLoadAllMovie(message: String) {
        print(message);
    }
    
}
