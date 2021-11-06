module Main
  ( main
  ) where

import Control.Monad (forM_)
import Fix (fib, rec)
import Test.Hspec (hspec, describe, shouldBe, it)

main :: IO ()
main = hspec $ do
    describe "fib" $ do
        it "returns the n-th Fibonacci number" $ do
            let xs = [(0, 0), (1, 1), (2, 1), (3, 2),
                      (4, 3), (5, 5), (6, 8), (7, 13),
                      (8, 21), (9, 34), (10, 55), (11, 89),
                      (12, 144), (13, 233)]
            forM_ xs $ \(x, y) -> fib x `shouldBe` y
    describe "rec" $ do
        it "returns the n-th Fibonacci number" $ do
            forM_ [0..20] $ \i -> rec i `shouldBe` fib i
