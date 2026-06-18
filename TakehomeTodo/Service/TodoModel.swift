import Foundation

struct Todo: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
}
