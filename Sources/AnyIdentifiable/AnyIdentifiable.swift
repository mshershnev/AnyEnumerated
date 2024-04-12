public struct AnyIdentifiable<T>: Identifiable {
    public let id: Int
    public let value: T
}

extension Array {
    public var identifiable: [AnyIdentifiable<Element>] {
        enumerated().map { .init(id: $0, value: $1) }
    }
}
