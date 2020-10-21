//
//  MovieDetailScreen.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 21.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId: String
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    
    var body: some View {
        
        VStack {
            
            if movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailVM: movieDetailVM)
            } else if movieDetailVM.loadingState == .failed {
                FailedView()
            }
        }
        
        .onAppear {
            self.movieDetailVM.getDetailsByImdbId(imdbId: self.imdbId)
        }
    }
}
