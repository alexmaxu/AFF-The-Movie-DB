//
//  ContentView.swift
//  AFFTheMovieDB
//
//  Created by Alex  on 21/5/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = TopRatedMovieVM()
    
    var body: some View {
        List {
            ForEach(vm.topRatedMovies) { movie in
                Text(movie.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
