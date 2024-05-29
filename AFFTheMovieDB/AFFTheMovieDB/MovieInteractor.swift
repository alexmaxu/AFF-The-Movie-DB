//
//  MovieInteractor.swift
//  AFFTheMovieDB
//
//  Created by Fran Ochoa on 29/5/24.
//

import Foundation

struct MovieInteractor: NetworkInteractorProtocol {
    static let shared = MovieInteractor()
    
    func getTopRatedMovies(page: Int) async throws -> TheMovieDBDTO {
        try await getJSONFromURL(request: .get(url: .mainURLMovieTopRated, page: page), type: TheMovieDBDTO.self)
    }
}
