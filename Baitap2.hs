-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)
f1 :: int -> int -> int -> Double
f1 x y z = x ** (y / z)

f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x / y - z)

f3 :: bool -> bool -> [bool]
f3 x y = [x == True] ++ [y]

f4 :: [int] -> [int] -> [int] -> bool
f4 x y z = x == (y ++ z)

-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?
{- To ensure that the input and output data are constant.
It's more convenient for writing code and testing it.
Cannot execute when data is not defined -}
-- Question 3
-- Why should you define type signatures for variables? How can they help you?
-- Good overall control of data variable types, helps readers quickly grasp the content of the function
-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
{- Yes
Example:
show :: a -> string
read :: string -> a-}
-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner most element?
listOfNames :: [ Char ]
listofname :: ["Quang" "Tai" "Tien" "Hieu"]
Inermostelement = (listofname !! 1) !! 2