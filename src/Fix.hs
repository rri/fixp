module Fix
    ( fib
    , rec
    ) where

import Data.Function (fix)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

rec :: Int -> Int
rec k = let
          f = \fib -> \n -> if n < 2 then n else fib (n - 1) + fib (n - 2)
        in
          fix f k
