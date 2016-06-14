compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = x : compressHelp xs x


compressHelp :: Eq a => [a] -> a -> [a]
compressHelp [] _ = []
compressHelp (x:xs) y = if x == y 
													then compressHelp xs y
													else x : compressHelp xs x

