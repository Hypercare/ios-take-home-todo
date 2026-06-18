import Foundation

enum APIRequest {
    case searchTodos(query: String)
    
    private var baseURL: String {
        switch self {
        case .searchTodos:
            return "https://jsonplaceholder.typicode.com"
        }
    }
    
    var fullPath: String {
        switch self {
        case .searchTodos(let query):
            return baseURL + "/posts?q=\(query)"
        }
    }
}

// TODO: Implement an API Service that handles APIRequest to returns the Todo list
// Bonus: make it generic.

protocol APIServiceProtocol {
    func fetchData<T: Decodable>(type: APIRequest) async throws -> [T]
}

class APIService: APIServiceProtocol {
    func fetchData<T: Decodable>(type: APIRequest) async throws -> [T] {
        // TODO: Build the URLRequest from `type.fullPath`, perform the request, and decode the response into `[T]`.
        return []
    }
}
