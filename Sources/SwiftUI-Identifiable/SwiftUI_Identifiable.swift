//public struct SwiftUI_Identifiable {}

extension Array {
    struct IdentifiableArray<T>: Identifiable {
        let id: Int
        let value: T
    }

    var identifiable: [IdentifiableArray<Element>] {
        enumerated().map {
            .init(id: $0, value: $1)
        }
    }
}
