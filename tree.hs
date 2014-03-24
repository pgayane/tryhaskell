data Tree a = Leaf a | Branch a (Tree a) (Tree a) 

fringe                     :: Tree a -> [a]
fringe (Leaf x)            =  [x]
fringe (Branch head left right) =  fringe left ++ fringe right

main = print(fringe(Branch (3) (Leaf 4) (Leaf 5)))