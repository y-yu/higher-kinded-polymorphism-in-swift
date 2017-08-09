class ArrayConstructor { }

extension Array: Newtype1 {
    typealias T = ArrayConstructor
    typealias A = Element
}

extension App where T: ArrayConstructor {
    func prj() -> Array<A> {
        return (self.underlying as! Array<A>)
    }
}
