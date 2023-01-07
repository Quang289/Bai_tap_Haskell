-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`

f1 :: Int -> Int -> Int
f1 a b = a - b

f1_Flip :: (Int -> Int -> Int) -> Int -> Int -> Int
f1_Flip f x y = f y x

-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).

curry' :: Int -> Int -> Int
curry' a b = a - b

uncurry' :: (Int -> Int -> Int) -> (Int, Int) -> Int
uncurry' f (x, y) = f x y

-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).

curry1 :: (Int, Int) -> Int
curry1 (a, b) = a - b

curry2 :: ((Int, Int) -> Int) -> Int -> Int -> Int
curry2 f x y = f (x, y)

-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there.

checkUpper :: Char -> Bool
checkUpper x = x `elem` ['A' .. 'Z']

checkUpper' :: String -> Bool
checkUpper' = any checkUpper

-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]

count :: String -> Int
count a = length $ filter (== a) votes

-- Create a one-line function that filters `cars` by brand and then checks if there are any left.

cars :: [(String, Int)]
cars = [("Toyota", 0), ("Nissan", 3), ("Ford", 1)]

filter' :: String -> Bool
filter' x = any (\b -> snd b > 0) . filter (\a -> fst a == x) $ cars