//
//  MovieListingRequest.swift
//  Movies
//
//  Created by Vamsi Gade on 23/02/21.
//

import Foundation

final class MovieListingRequest: Requestable {

    typealias ResponseType = MovieListModel
    
    var baseUrl: URL {
        return URL(string: "https://api.themoviedb.org/")!
    }
    
    var endpoint: String {
//        return "3/movie/upcoming"
        return "3/movie/top_rated"
    }
    
    var method: NetworkAccess.Method {
        return .get
    }
    
    var query: NetworkAccess.QueryType {
        return .path
    }
    
    var parameters: [String : Any]? {
        return ["api_key" : "ef62011f87e156d8f8b87955cf541b1c","language":"en-US"]
    }
    
    var headers: [String : String]? {
        return defaultJSONHeader
    }
    
    var timeout: TimeInterval {
        return 30.0
    }
    
    var cachePolicy: NSURLRequest.CachePolicy {
        return .reloadIgnoringLocalAndRemoteCacheData
    }
}

