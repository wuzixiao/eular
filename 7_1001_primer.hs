primes = filterPrime [2..1000000] 
  where filterPrime (p:xs) = 
          p : filterPrime [x | x <- xs, x `mod` p /= 0]

getNPrimer n = primes !! n

filterP [] = []
filterP (p:xs) = p: filterP [x | x <- xs, x`mod` p /= 0]

result = sum [ x | x <- primes]

primes'= 2 : filter (null . tail . primeFactors) [3,5..31]
 
primeFactors n = factor n primes'
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

result1 = sum (takeWhile (<2000000) primes')


