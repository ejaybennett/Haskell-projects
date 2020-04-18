module FuncExtSol where

import Data.Tree

map2 :: (a -> b) -> [[a]] -> [[b]]
map2 = undefined

mapTree2 :: (a -> b) -> Tree (Tree a) -> Tree (Tree b)
mapTree2 = undefined

print2 :: Show a => a -> a -> IO ()
print2 = undefined

fmap2 :: Functor f => (a -> b) -> f (f a) -> f (f b)
fmap2 = undefined

printShowables :: Show a => [a] -> IO ()
printShowables = undefined
