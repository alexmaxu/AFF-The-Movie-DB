//
//  URLSession.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

extension URLSession {
    static func getData(request: URLRequest) async throws -> (data: Data, responseHTTP: HTTPURLResponse) {
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let responseHTTP = response as? HTTPURLResponse else {
            throw NetworkError.nonHTTP
        }
        
        return (data, responseHTTP)
    }
}
