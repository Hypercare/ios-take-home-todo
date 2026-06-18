
import SwiftUI

@main
struct TakehomeTodoApp: App {
    var body: some Scene {
        WindowGroup {
            let vm = MainViewModel(
                dataService: TodoService(apiService: APIService())
            )
            MainView(viewModel: vm)
        }
    }
}
