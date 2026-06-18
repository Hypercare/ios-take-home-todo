import Foundation
import Combine
import SwiftUI

@MainActor
final class MainViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var searchText: String = ""
    private var cancellables: Set<AnyCancellable> = []
    
    private var dataService: TodoServiceProtocol
    
    init(dataService: TodoServiceProtocol, todos: [Todo] = []) {
        self.dataService = dataService
        self.todos = todos
        
        $searchText
            .debounce(for: .seconds(0.1), scheduler: RunLoop.main)
            .sink { [weak self] value in
                self?.search(for: value)
            }.store(in: &cancellables)
    }
    
    func search(for text: String) {
        if text.isEmpty {
            todos = []
            return
        }
        
        Task { @MainActor in
            do {
                todos = try await dataService.fetch(searchText: text)
            } catch {
                todos = []
                print(error)
            }
        }
    }
}
