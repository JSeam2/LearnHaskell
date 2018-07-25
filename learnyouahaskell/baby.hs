-- NOTES FROM learnyouahaskell.com/starting-out

doubleMe x = x * 2

doubleUs x y = doubleMe x + doubleMe y

-- note: else is mandatory in haskell, an expression must always return something
doubleSmallNumber x = if x > 100
                      then x
                      else x*2

-- note: ' is not a special character in haskell and can be used for identifiers
-- note: functions cannot begin with uppercase characters
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- note: concatenate stuff like this
-- note: [1,2,3] is syntactic sugar for 1:2:3:[]
concatenateStuff x y = x ++ y


-- note: things you can do with lists
--
-- head [5,4,3,2,1]
-- 5
--
-- tail [5,4,3,2,1]
-- [4,3,2,1] 
--
-- last [5,4,3,2,1]
-- 1
--
-- init [5,4,3,2,1]
-- [5,4,3,2]
--
-- IMPT: you can't head an empty list. You will receive an
--    *** Exception: Prelude.head: empty list
-- This error cannot be caught at compile time so it is a good practice
-- to take precautions against accidentally telling Haskell to give you 
-- some elements from an empty list
--
-- Other useful functions
-- length, null, reverse, maximum, minimum, sum, product >>> function list
-- take, drop >>> function num list
-- elem >>> 4 `elem` [3,4,5,6]
-- True
--
-- Define ranges
--  [1..20]
--  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
--  [1..] <--- infinite ranges
