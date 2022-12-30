-- question 1
-- Write a multiline comment below.
{- Hello!
How are you?
have a nice day!-}
-- Question 2
-- Define a function that takes a value and multiplies it by 3.
multipliesby3 x = x * 3
-- Question 3
-- Define a function that calculates the area of a circle.
areaofcircle r = pi * r^2
-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder.
volumeofcylinder r h = (areaofcircle r) * h
-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.
greaterthan42 r h = (volumeofcylinder r h) >= 42