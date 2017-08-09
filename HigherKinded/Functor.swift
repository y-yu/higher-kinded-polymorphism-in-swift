protocol Functor {
    associatedtype F
    associatedtype E
    
    func mapF<B>(_ f: (E) -> B) -> App<F, B>
}

extension Array: Functor {
    typealias F = ArrayConstructor
    typealias E = Element
    
    func mapF<B>(_ f: (E) -> B) -> App<F, B> {
        return self.map(f).inj()
    }
}

extension Tree: Functor {
    typealias F = TreeConstructor
    typealias E = Element
    
    private func loop<B>(_ x: Tree<E>, _ f: (E) -> B) -> Tree<B> {
        switch x {
        case .Leaf:
            return .Leaf
        case let .Node(l, a, r):
            return Tree<B>.Node(l: loop(l, f), a: f(a), r: loop(r, f))
        }
    }
    
    func mapF<B>(_ f: (E) -> B) -> App<F, B> {
        return loop(self, f).inj()
    }
}
