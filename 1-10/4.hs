myLength :: Integral n => [a] -> n
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)
