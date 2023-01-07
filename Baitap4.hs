-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

f1 :: [([Int], [Int])] -> String
f1 [(_,[_,x]), (_,_)] = show x
f1 _ = "Invalid input list"      

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

f2 :: [ Int ] -> [ Int ]
f2 [] = []
f2 [x] = [x]
f2 (x,y,_)  = [x,y]

ff2' :: [ Int ] -> [ Int ]
ff2' x = case x of
[] = []
[x] = [x]
(x,y,_)  = [x,y]

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

f3 :: (Integer, Integer, Integer) -> Integer
f3 (x,y,z) = x + y + z

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

f4 :: [ Int ] -> Bool
f4 [] = True
f4 Otherwise = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

f5 :: [ Int ] -> [ Int ]
f5 [] = []
f5 (a: rest) = rest

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

f6 :: Int -> Int
f6 x = case even x of
True -> x + 1
False -> x