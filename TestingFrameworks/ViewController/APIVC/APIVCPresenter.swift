//
//  APIVCPresenter.swift
//  TestingFrameworks
//
//  Created by Lainel John Dela Cruz on 13/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import BaseCodeAPI;
import RxSwift

protocol APIVCView: BaseView{
    func successLoadAllMovie(movies:[MovieResponse])
    func failedLoadAllMovie(message:String)
    
    func successLoadMovieInfo(movie:MovieResponse);
    func failedLoadMovieInfo(message:String);
}

class APIVCPresenter: BasePresenter {
    private let disposeBag: DisposeBag
    private let movieRespository:MoviesRepository
    init(movieRespository: MoviesRepository) {
        self.movieRespository = movieRespository
        self.disposeBag = DisposeBag()
    }
    func getView() -> APIVCView? {
        return view as? APIVCView
    }
    
    func getAllMovies(){
        self.movieRespository.getMoviesWithLimit(limit: 100)
            .subscribe(onNext: { movies in
                self.getView()?.successLoadAllMovie(movies: movies)
            }, onError: { error in
                self.getView()?.failedLoadAllMovie(message: "error request from server");
            }).disposed(by: disposeBag);
    }
    func getInfo(id:Int){
        self.movieRespository.getByInfo(id: id)
            .subscribe(onNext: { movie in
                self.getView()?.successLoadMovieInfo(movie: movie)
            }, onError: { error in
                self.getView()?.failedLoadMovieInfo(message: "Failed Movie Info");
            }).disposed(by: disposeBag);
    }
    
    
    
}

