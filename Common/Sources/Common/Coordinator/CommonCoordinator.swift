
import Foundation
import SwiftUI

public enum CommonPage: Hashable {
    case root
}

@available(iOS 16, *)
public class CommonCoordinator: CommonCoordinatorProtocol {

    // MARK: - Properties

    @Published public var path = NavigationPath()
    private let configuration: CommonConfigurationProtocol
    private let bundleMainApp: Bundle?

    // MARK: - Initializer

    public required init(path: NavigationPath = NavigationPath(), configuration: CommonConfigurationProtocol, bundleMainApp: Bundle? = nil) {
        self.path = path
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
    
    // MARK: - Functions

    public func push(page: CommonPage) {
        path.append(page)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func pop() {
        path.removeLast()
    }

    @ViewBuilder public func build(page: CommonPage) -> some View {
        switch page {
        case .root:
            CommonView(
                viewModel: CommonViewModel(
                    configuration: configuration,
                    bundleMainApp: bundleMainApp ?? .main
                )
            )
        }
    }
}