//
//  NotworkInteractor.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

protocol NetworkInteractor {
    
}

extension NetworkInteractor {
    func getJSONFromURL<T>(request: URLRequest, type: T.Type) async throws -> T where T:Codable {
        let (data, response) = try await URLSession.getData(request: request)
        
        guard response.statusCode == 200 else {
            throw NetworkError.badResponse(response.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch {
            throw NetworkError.JSONDecodeError(error)
        }
        
    }
}
