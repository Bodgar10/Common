
import Combine
import Foundation
import SwiftUI

public class CommonViewModel: CommonViewModelProtocol {

    // MARK: - Properties

    private let configuration: CommonConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: CommonConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}