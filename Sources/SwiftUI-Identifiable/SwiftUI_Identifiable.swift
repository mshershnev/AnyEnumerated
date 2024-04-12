extension Array {
    public struct EnumeratedArray<T>: Identifiable {
        public let id: Int
        public let value: T
    }

    public var identifiable: [EnumeratedArray<Element>] {
        enumerated().map { .init(id: $0, value: $1) }
    }
}
