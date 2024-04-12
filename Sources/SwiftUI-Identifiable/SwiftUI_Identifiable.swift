extension Array {
    public struct AnyEnumerated<T>: Identifiable {
        public let id: Int
        public let value: T
    }

    public var identifiable: [AnyEnumerated<Element>] {
        enumerated().map { .init(id: $0, value: $1) }
    }
}
