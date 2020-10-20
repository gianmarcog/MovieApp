//
//  HTTPClient.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 19.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case noData
    case decodingError
}

class HTTPClient {
    
    func getMovieDetailsBy(search  : String, completion: @escaping (Result<[Movie]?, NetworkError>) -> Void) {
        
        guard let url = URL.forMoviesByName(search) else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let moviesResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                return completion(.failure(.decodingError))
            }
            
            completion(.success(moviesResponse.movies))
            
        }.resume()
        
    }
}
    
   
