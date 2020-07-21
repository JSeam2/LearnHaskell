import Data.List.Split
import Data.List

reverseStringCond :: String -> String
reverseStringCond str  
  | ( length str ) > 4 = reverse str
  | ( length str) <= 4 = str

spinWords :: String -> String
spinWords str = intercalate " " (map (reverseStringCond) (splitOn " " str))

main = print ( spinWords "test test eyylamo")

-- Alternate 1 
-- spinWords :: String -> String
-- spinWords str = unwords [if length word >= 5 then reverse word else word | word <- words str]


-- Alternate 2
-- spinWords :: String -> String
-- spinWords = unwords . map (\x -> if length x >= 5 then reverse x else x) . words

