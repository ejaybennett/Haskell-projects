module TableTags where

data TableTag = Table | Tr | Td | Th

showTableTag :: TableTag -> String
showTableTag = undefined

equalTableTags :: TableTag -> TableTag -> Bool
equalTableTags = undefined

instance Show TableTag where
  show = showTableTag

instance Eq TableTag where
  (==) = equalTableTags

directElt :: TableTag -> TableTag -> Bool
directElt = undefined

{- TableHtml

   The object

     Element tag [ subelt_1 , ... , subelt_n ]

   represents an HTML element with the given tag and the given sub elements.  n is allowed to be 0, which
   is one base case for TableHtml.

   The other base case for TableHtml is

     Raw s

   which just represents unstructured textual data s as part of TableHtml. -}
data TableHtml = Element TableTag [TableHtml] | Raw String

showTable :: TableHtml -> String
showTable = undefined

instance Show TableHtml where
  show = showTable 

{- return a list of the sub elements (like subelt_1 , ... , subelt_n above).
   a Raw object should have the empty list of sub elements. -}
getSubelts :: TableHtml -> [TableHtml]
getSubelts = undefined

{- return True iff the given TableHtml is an Element with the given TableTag.  You can use == to compare TableTags,
   because the code above makes TableTag an instance of the Eq type class. -}
hasTag :: TableHtml -> TableTag -> Bool
hasTag = undefined

{- return the number of subelts of the given TableHtml.  The intention is that this function will just be called
   with TableHtml whose tag is Tr, but correct operation of the function does not require this. -}
rowLength :: TableHtml -> Int
rowLength = undefined

tableOk :: TableHtml -> Bool
tableOk = undefined
