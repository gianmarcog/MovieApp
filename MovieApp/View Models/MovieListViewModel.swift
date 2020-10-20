//
//  MovieListViewModel.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 20.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

class MovieListViewModel: ObservableObject {
    
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(name: String) {
        
        httpClient.getMovieDetailsBy(search: name) { result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies = movies.map(MovieViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
}

struct MovieViewModel {
    
    let movie: Movie
    
    var imdbId: String {
        movie.imdbId
    }
    
    var title: String {
        movie.title
    }
    
    var poster: String {
        movie.poster
    }
    
    var year: String {
        movie.year
    }
}
