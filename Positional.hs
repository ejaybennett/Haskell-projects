module Positional where

type Pos = [Integer]

toPos :: Integer -> Integer -> Pos
toPos = undefined

fromPos :: Integer -> Pos -> Integer
fromPos = undefined

data Expr = Num Integer | Plus Expr Expr | Times Expr Expr

instance Show Expr where
  show = undefined

toExpr :: Integer -> Pos -> Expr
toExpr = undefined

addPos :: Integer -> Pos -> Pos -> Pos
addPos = undefined
