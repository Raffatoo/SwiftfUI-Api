//
//  ContentView.swift
//  SwiftfUIApi
//
//  Created by Cruz Torres on 21/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PostListViewModel()
    
    var body: some View {
        List(model.posts) {
            Text($0.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
