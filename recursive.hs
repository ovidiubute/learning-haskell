module Foo where

-- Basics
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

fib :: (Integral a) => a -> a
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- Pattern matching
summify :: (Num a) => [a] -> a
summify [] = 0
summify (n:xs) = n + summify xs

-- Fold left and partially applied functions
summify' :: (Num a) => [a] -> a
summify' = foldl (+) 0

-- Guards
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n =  n:chain (n `div` 2)
    | odd n  =  n:chain (n*3 + 1)

-- Testing out chain
numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
