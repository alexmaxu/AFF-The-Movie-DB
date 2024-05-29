//
//  URLRequest.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 23/5/24.
//

import Foundation

extension URLRequest {
    static func get(url: URL, page: Int) -> URLRequest {
        var request = URLRequest(url: url)
        request.url?.append(queryItems: [URLQueryItem(name: "page", value: "\(page)")])
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = [
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YmI0YTNkODllNWJjNTRhYTFlNGU1N2QyYzllNWE2NCIsInN1YiI6IjY2MjkzMGVmMTc2YTk0MDE2NjgyNzM0ZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.rGwb6tpV1eMSYXsNP1VtCNDpk6U9j-OWGCZ1YJma_uk"
        ]
        return request
    }
}
