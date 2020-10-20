//
//  Movies.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 19.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

struct MovieResponse: Codable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}


struct Movie: Codable {
    let title: String
    let year: String
    let imdbId: String
    let poster: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case poster = "Poster"
    }
    
}
