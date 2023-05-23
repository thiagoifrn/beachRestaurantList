//
//  RestaurantDomainTests.swift
//  RestaurantDomainTests
//
//  Created by Thiago Pereira de Souza on 16/05/23.
//

import XCTest
@testable import RestaurantDomain

final class RestaurantDomainTests: XCTestCase {

    func testInicializerRemoteRestaurantLoader() throws {
        let anyUrl = try XCTUnwrap(URL(string: "https://comitando.com.br"))
        let client = NetworkClientSpy()
        let sut = RemoteRestaurantLoader(url: anyUrl, netWorkClient: client)
        
        sut.load()
        
        XCTAssertEqual(client.urlRequest, anyUrl)
        
    }

}

final class NetworkClientSpy: NetworkClient {
    private(set) var urlRequest: URL?

    func request(from url: URL) {
        urlRequest = url
    }
    

    
    
}
