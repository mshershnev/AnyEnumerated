extension Array {
    struct EnumeratedArray<T>: Identifiable {
        let id: Int
        let value: T
    }

    var identifiable: [EnumeratedArray<Element>] {
        enumerated().map { .init(id: $0, value: $1) }
    }
}
