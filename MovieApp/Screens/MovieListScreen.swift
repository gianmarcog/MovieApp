//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 20.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        self.movieListVM = MovieListViewModel()
        self .movieListVM.searchByName(name: "batman")
    }
    
    var body: some View {
        
        VStack {
            MovieListView(movies: self.movieListVM.movies)
                .navigationBarTitle("Movies")
        }.embedNavigationView()
    }
    
}


struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
