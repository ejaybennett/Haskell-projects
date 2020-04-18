module SvgStar where

import Data.List

type Point = (Int,Int)

htmlStart :: String
htmlStart = "<!DOCTYPE html>\n"++
           "<html>\n"++
           "<body>\n\n"++
           "<svg width=\"1000\" height=\"1000\">\n\n"

htmlEnd :: String
htmlEnd = "</svg>\n</body>\n</html>\n"

showStar :: Int -> Int -> Int -> Int -> Int -> String
showStar tx ty r sep n = "<circle cx=\"50\" cy=\"50\" r=\"20\" fill=\"blue\"/>" -- replace with your actual svg for stars

writeStar :: String -> Int -> Int -> Int -> Int -> Int -> IO ()
writeStar filename tx ty r sep n =
  writeFile filename (htmlStart ++ showStar tx ty r sep n ++ htmlEnd)

