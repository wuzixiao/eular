

fib :: Int -> Int

fib 1 = 1
fib 2 = 2
fib n = fib(n-1) + fib(n-2)

sum_fib :: Int -> Int

sum_fib n = sum [ fib(x) | x <- [1..n], fib(x) <= 4000000]


-- Fib (n) / Fib(n-1) == Golden Ratio (1.618) which is called Phi

-- 1/Phi = 0.618  Phi^2 = 1+Phi 1/Phi^2 = 1-0.618,,   amazing








