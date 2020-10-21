//
//  String+Extension.swift
//  MovieApp
//
//  Created by Gianmarco Giretti on 21.10.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return
        trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
 
