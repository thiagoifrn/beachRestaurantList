//
//  RemoteRestaurantLoader.swift
//  RestaurantDomain
//
//  Created by Thiago Pereira de Souza on 23/05/23.
//

import Foundation

final class NetworkClient {
 
    static let shared: NetworkClient = NetworkClient()
    private(set) var urlRequest: URL?
    
    private init(){}
    
    func request(from url: URL){
        urlRequest = url
    }
    
}

final class RemoteRestaurantLoader {
    
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func load() {
        NetworkClient.shared.request(from: url)
    }
}
