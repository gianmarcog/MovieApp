//
//  View.Extension.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 20.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    
    func embedNavigationView()-> some View {
        return NavigationView { self }
    }
}
