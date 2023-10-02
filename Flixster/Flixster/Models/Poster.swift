//
//  Poster.swift
//  Flixster
//
//  Created by Julio Padron on 9/30/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: String
    
    var posterImageURL: URL?{
        let baseURL = "https://image.tmdb.org/t/p/original"
        return URL(string: baseURL + poster_path)
    }
}
