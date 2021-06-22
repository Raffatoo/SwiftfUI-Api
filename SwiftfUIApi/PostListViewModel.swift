//
//  PostListViewModel.swift
//  SwiftfUIApi
//
//  Created by Cruz Torres on 21/06/21.
//

import Foundation
import Combine

class PostListViewModel: ObservableObject {
    init() {
        getPosts()
    }
    
    @Published var posts = [Post] () {
        didSet {
            didChange.send(self)
        }
    }
    
    let didChange = PassthroughSubject<PostListViewModel, Never>()
    
    
    func getPosts() {
        NetworkManager().getPosts {
            //(post) in
            //voy asignar lo que hay en la capa de conexion a la propiedad viewModel
            //self.posts = post
            self.posts = $0
            
        }
    }
}
