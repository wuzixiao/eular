-- Convert string to Int list
-- sToL :: Integral a => String -> [a]
-- sToL = map (read . return)

import Data.Char

sToL :: [Char] -> [Int]
-- But this will fail. sToL :: Int a => [Char] -> [a]
--String is a type, and you are using it as a type class. A type class is a collection of types, rather than a single type, e.g. Integer and Double and Rational are all types belonging to the type class Num. Type classes appear to the left of => in types, where real types and type variables appear to the right of =>


sToL str = map digitToInt str


