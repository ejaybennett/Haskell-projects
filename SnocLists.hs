module SnocLists where

data SList a = Snil | Scons (SList a) a

sappend :: SList a -> SList a -> SList a
sappend = undefined

slength :: SList a -> Int
slength = undefined

smap :: (a -> b) -> SList a -> SList b
smap = undefined

sfilter :: (a -> Bool) -> SList a -> SList a
sfilter = undefined

sintersperse :: a -> SList a -> SList a
sintersperse = undefined

-- given a list of lists l1 ... lk , return the concatenation of l1 through lk.
sconcat :: SList (SList a) -> SList a
sconcat = undefined
