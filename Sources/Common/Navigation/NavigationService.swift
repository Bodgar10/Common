//
//  NavigationService.swift
//
//
//  Created by Bodgar Espinosa Miranda on 07/08/24.
//


/// Protocol to know where we need to go in each screen.
public protocol Destination {}

/// Service to use in the different modules to create each router in each module.
public protocol NavigationService: Service {
    func navigate(to destination: Destination)
}

protocol Test {
    func test()
}
