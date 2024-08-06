
import Foundation
import SwiftUI

public struct CommonView<VM>: View where VM: CommonViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("Common View")
    }
}

struct CommonView_Previews: PreviewProvider {
    static var previews: some View {
        CommonView(viewModel: CommonViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: CommonConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}