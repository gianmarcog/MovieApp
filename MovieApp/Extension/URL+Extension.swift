//
//  URL+Extension.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 20.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

extension URL {
    
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
}
