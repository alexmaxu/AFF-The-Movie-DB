//
//  ModelPelicula.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

// MARK: - Pelicula
struct TheMovieDBDTO: Codable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Movie: Identifiable, Codable {
    let id: Int
    let originalTitle: String
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let originalLanguage, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
