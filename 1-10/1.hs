
myLast :: [a] -> a
myLast [] = error "Empty List"
myLast (fst:[]) = fst
myLast (fst:rst) = myLast rst
