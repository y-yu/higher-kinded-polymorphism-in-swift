protocol Newtype1 {
    associatedtype T
    associatedtype A
    
    func inj() -> App<T, A>
}

extension Newtype1 {
    func inj() -> App<T, A> {
        return App(self)
    }
}
