//
//  RemoteRestaurantLoader.swift
//  RestaurantDomain
//
//  Created by Thiago Pereira de Souza on 23/05/23.
//

import Foundation

protocol NetworkClient {
    func request(from url: URL)
}

final class RemoteRestaurantLoader {
    
    let url: URL
    let netWorkClient: NetworkClient
    init(url: URL,  netWorkClient: NetworkClient) {
        self.url = url
        self.netWorkClient = netWorkClient
    }
    
    func load() {
        netWorkClient.request(from: url)
    }
}
