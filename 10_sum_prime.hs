
primes = filterPrime[2..1000000]
  where filterPrime (p:xs) =
          p : filterPrime [x | x <- xs, x `mod` p /= 0]

result = sum[x | x <- primes]

