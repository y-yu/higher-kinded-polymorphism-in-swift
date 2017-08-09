indirect enum Tree<Element> {
    case Leaf
    case Node(l: Tree<Element>, a: Element, r: Tree<Element>)
    
    func toString() -> String {
        switch self {
        case .Leaf:
            return "L"
        case let .Node(l, a, r):
            return "N(\(l.toString()), \(a), \(r.toString()))"
        }
    }
}

class TreeConstructor { }

extension Tree: Newtype1 {
    typealias A = Element
    typealias T = TreeConstructor
}

extension App where T: TreeConstructor {
    func prj() -> Tree<A> {
        return (self.underlying as! Tree<A>)
    }
}
