module Basics where

import Control.Monad.State.Lazy

prob1 :: IO [Integer]
prob1 =
  do
    putStrLn "prob1"
    return [1,2,3]

prob2 :: State Integer Integer
prob2 =
    get >>= (\ x -> 
    put (x + x) >>
    return 1)

type Sta s a = s -> (s,a)

prob3 :: Sta Integer Integer
prob3 s = (s,s) -- fill this in


reverseArgs :: IO [String]
reverseArgs = return []

getFirstArgIf :: IO (Maybe String)
getFirstArgIf = return Nothing
