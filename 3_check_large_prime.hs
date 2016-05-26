{-
intSquareRoot :: Int -> Int
intSquareRoot n = try n where
  try i   | i*i > n   = try (i - 1) 
          | i*i <= n  = i

isPrime k = null [ x | x <- [2..intSquareRoot k], k `mod`x  == 0 ]

myDropX n xs = if n <= 0 || null xs then xs else myDropX (n - 1) (tail xs)

length' xs = sum [1 | _ <- xs] 

topPrime n =  [x | x <- [n,n-1..1], isPrime x]

generate n = head [x | x <- topPrime n]

-}

mind x = head [y | y <- [2..], x `mod` y == 0]
factorize 1 l = l 
factorize p l = factorize (p `div` (mind p)) l++[mind p]
re s = factorize s []

