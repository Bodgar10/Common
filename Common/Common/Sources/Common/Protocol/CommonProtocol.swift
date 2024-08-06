
import Foundation
import SwiftUI

public protocol CommonViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: CommonConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol CommonConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol CommonCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: CommonConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: CommonPage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: CommonPage) -> view
}