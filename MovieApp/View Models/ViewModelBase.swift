//
//  ViewModelBase.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 21.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase:  ObservableObject {
    @Published var loadingState: LoadingState = .none
}
