//
//  NetworkError.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

enum NetworkError: LocalizedError {
    case nonHTTP
    
    case badResponse(Int)
    
    case JSONDecodeError(Error)
    
    var errorDescription: String {
        switch self {
        case .nonHTTP:
            "It is not an HTTPURLResponse"
        case .badResponse(let statusCode):
            "Error status code: \(statusCode)"
        case .JSONDecodeError(let error):
            "JSON Decode Error :\(error)"
        }
    }
}
