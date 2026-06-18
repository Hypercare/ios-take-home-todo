import Foundation

// TODO: Implement TodoService which uses the API Service to fetch todos.

protocol TodoServiceProtocol {
    func fetch(searchText: String) async throws -> [Todo]
}

actor TodoService: TodoServiceProtocol {
 
    private var apiService: APIServiceProtocol
    
    init(apiService: APIServiceProtocol) {
        self.apiService = apiService
    }
    
    func fetch(searchText: String) async throws -> [Todo] {
        // TODO: Use `apiService` to fetch and return the todos matching `searchText`.
        return []
    }
}
