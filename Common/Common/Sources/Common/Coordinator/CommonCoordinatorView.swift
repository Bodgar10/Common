
import Foundation
import SwiftUI

@available(iOS 16, *)
public struct CommonCoordinatorView<Coordinator>: View where Coordinator: CommonCoordinatorProtocol {

    // MARK: - Properties

    @ObservedObject private var coordinator: Coordinator
    let config: CommonConfigurationProtocol

    // MARK: - Initializer

    public init(coordinator: Coordinator, config: CommonConfigurationProtocol) {
        self.coordinator = coordinator
        self.config = config
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .root)
                .navigationDestination(for: CommonPage.self) { page in
                    coordinator.build(page: page)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("Some action")
                        })
                        {
                            Image(systemName: "globe.fill")
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .background(
                                    Color.blue.frame(width: 35, height: 35)
                                        .clipShape(RoundedRectangle(cornerRadius: 6.0))
                                )
                        }
                    }
                }
        }
        .environmentObject(coordinator)
    }
}