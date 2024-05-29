//
//  URL.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

let mainURL = URL(string: "https://api.themoviedb.org/3")!

extension URL {
    static let mainURLMovie = mainURL.appending(path: "movie")
    static let mainURLMovieTopRated = mainURLMovie.appending(path: "top_rated")
    
    static let mainURLTVSeries = mainURL.appending(path: "tv")
    static let mainURLTVSeriesPopular = mainURLTVSeries.appending(path: "popular")
}
