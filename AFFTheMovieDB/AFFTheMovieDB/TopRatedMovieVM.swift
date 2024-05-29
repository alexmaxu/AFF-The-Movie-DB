//
//  TopRatedMovieVM.swift
//  AFFTheMovieDB
//
//  Created by Fran Ochoa on 29/5/24.
//

import Foundation

final class TopRatedMovieVM: ObservableObject {
    let interactor = MovieInteractor.shared
    var page: Int = 1
    @Published var topRatedMovies: [Movie] = []
    
    init() {
        Task {
            await fetchTopRatedMovies()
        }
    }
    
    func fetchTopRatedMovies() async {
         do {
             let result = try await interactor.getTopRatedMovies(page: page).results
             await MainActor.run {
                 topRatedMovies += result
             }
        } catch {
            print(error)
        }
    }
}
