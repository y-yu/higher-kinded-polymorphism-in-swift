protocol Newtype1 {
    associatedtype A
    associatedtype T
    
    func inj() -> App<T, A>
}

extension Newtype1 {
    func inj() -> App<T, A> {
        return App(self)
    }
}
