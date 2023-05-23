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
        let sut = RemoteRestaurantLoader(url: anyUrl)
        
        sut.load()
        
        XCTAssertNotNil(NetworkClient.shared.urlRequest)
    }

}
