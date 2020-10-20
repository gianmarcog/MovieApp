//
//  ContentView.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 18.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            
        
        .onAppear {
            HTTPClient().getMovieDetailsBy(search: "batman") { result in
                switch result {
                    case .success(let movies):
                        print(movies)
                    case .failure(let error):
                        print(error.localizedDescription)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
