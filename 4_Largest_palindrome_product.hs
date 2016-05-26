reverse' :: [a] -> [a]  
reverse' = foldl (\acc x -> x : acc) []

multilist = [x*y | x <- reverse' [100..999], y<- reverse' [x..999]]

isPalin x = reverse' (show x) == show x

lastPalindrome = maximum [x| x <-multilist, isPalin x]


-- a good way from wiki.haskell.
lastPal =  maximum [x | y<-[100..999], z<-[y..999], let x=y*z, let s=show x, s==reverse s]
