//
//  ContentView.swift
//  SwiftUIGrids
//
//  Created by Ramill Ibragimov on 11.08.2020.
//

import SwiftUI

struct ContentView: View {
    private let columns = [
        GridItem(),
        GridItem(),
        GridItem(),
        GridItem(),
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ..< 100) { value in
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
