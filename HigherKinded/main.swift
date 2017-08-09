print( [1, 2, 3, 4, 5].mapF({ (x: Int) -> Int in return x + 1 }).prj() )

let tree: Tree<Int> =
    Tree<Int>.Node(
        l: .Node(l: .Leaf, a: 1, r: .Leaf),
        a: 2,
        r: .Node(l: .Leaf, a: 3, r: .Leaf)
    )

print( tree.mapF({ (x: Int) -> Int in return x + 1 }).prj().toString() )
