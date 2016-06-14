pack :: Eq a => [a] -> [[a]]
pack (x:xs) = reverse(packHelp (x:xs) [] []) 


packHelp [] curList accList = curList : accList
packHelp (x:xs) [] accList = packHelp xs [x] accList
packHelp (x:xs) (a:as) accList = if x == a
                                 then packHelp xs (x:a:as) accList
																 else packHelp xs [x] ((a:as) : accList)

encode :: Eq a => [a] -> [(Int, a)]
encode lst = let 
								packed = (pack lst)
								encodePacked y@(x:xs) = (length y, x)
             in map encodePacked packed
