class ArrayConstructor { }

extension Array: Newtype1 {
    typealias A = Element
    typealias T = ArrayConstructor
}

extension App where T: ArrayConstructor {
    func prj() -> Array<A> {
        return (self.underlying as! Array<A>)
    }
}
