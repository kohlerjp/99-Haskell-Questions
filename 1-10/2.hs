myButLast :: [a] -> a
myButLast [] = error "Empty List"
myButLast (x:[]) = error "Single element list"
myButLast (fst:snd:[]) = fst
myButLast (fst:rst) = myButLast rst
