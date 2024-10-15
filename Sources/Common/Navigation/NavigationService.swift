//
//  NavigationService.swift
//
//
//  Created by Bodgar Espinosa Miranda on 07/08/24.
//

import Foundation

public class NavigationState: ObservableObject {
    @Published public var path: [Destination] = []
    @Published public var isPresentingModal: Bool = false
    @Published public var modalDestination: Destination?
    
    public init() {}
}

/// Protocol to know where we need to go in each screen.
public protocol Destination {}

/// Service to use in the different modules to create each router in each module.
public protocol NavigationService: Service, ObservableObject {
    var navigationState: NavigationState { get }
    func navigate(to destination: Destination)
    func presentModal(to destination: Destination)
    func dismissModal()
}

protocol Test {
    func test()
}
