elementAt :: Integral b => [a] -> b -> a
elementAt _ 0 = error "Given Zero"
elementAt [] x = error "Index out of range"
elementAt (x:xs) 1 = x
elementAt (x:xs) i = elementAt xs (i-1)
