import SwiftUI

struct MainView: View {
    @StateObject var viewModel: MainViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.todos) { todo in
                    NavigationLink(value: todo) {
                        Text("\(todo.id)")
                        Text(todo.title)
                    }
                }
            }
            .searchable(text: $viewModel.searchText)
            .navigationTitle("Search Todos")
        }
    }
}

//#Preview {
//    /// Feel free to add a preview if you would like.
//}
