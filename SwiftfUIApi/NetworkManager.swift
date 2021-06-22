//
//  NetworkManager.swift
//  SwiftfUIApi
//
//  Created by Cruz Torres on 21/06/21.
//

import Foundation

class NetworkManager {
    
    func getPosts(completion: @escaping([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("No acces a URL")
        }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else {
                return
            }
            if response.statusCode == 200 {
                //serializamos los datos que hay
                do {
                    let posts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async{
                        completion(posts)
                    }
                } catch let error {
                    print("Ha ocurrido un error \(error.localizedDescription)")
                }
            }
        }.resume()
        
    }
    
}
