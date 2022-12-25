     -- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

tinhmuctieuthuthang :: Float -> Float -> String
tinhmuctieuthuthang p t
 | muctieuthuthang > hanmuc = "lon hon"
 | muctieuthuthang < hanmuc = "nho hon"
 | muctieuthuthang == hanmuc = "bang"
 where
  muctieuthuthang = p * t *30
  hanmuc = 2000

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

tinhmuctieuthuthang' :: Float -> Float -> String
tinhmuctieuthuthang' p t
 | muctieuthuthang' > hanmuc = "Dung nhieu hon" ++ show (muctieuthuthang' - hanmuc) ++ "kw"
 | muctieuthuthang' < hanmuc = "Dung it hon" ++ show (muctieuthuthang' - hanmuc) ++ "kw"
 | muctieuthuthang' == hanmuc = "Dat chi tieu"
 where
  muctieuthuthang' = p * t *30
  hanmuc = 2000
-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

{- Sử dụng biểu thức let in để làm các bài toán lớn chia nhỏ các công thức tính toán thành các công thức nhỏ và dễ nhìn dễ hiểu.
VD: tính phí tư vấn bao gồm phí thiết kế ( kiến trúc + KC + MEP) và phí giám sát tác giả -}
phituvan ::Float -> Float -> Float-> Float -> Float-> Float -> Float
phituvan kt kc mep don_gia m2 solan = 
           let phithietke = ( kt + kc + mep ) * don_gia * m2
               phigstacgia = solan * 1000000
           in phithietke + phigstacgia
           
-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

sothuong :: Float -> Float -> String
sothuong a b = if b == 0
              then "khong ton tai phep chia nay "
              else 
               if a < b
               then show (a/b)
               else "thuong > 1"

sothuong' :: Float -> Float -> String
sothuong' a b
   | b == 0 = "khong ton tai phep chia nay "
   | a < b = show (a/b)
   | otherwise = "Thuong > 1"
   
-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

tongbinhphuong_tich_va_thuong :: Float -> Float -> Float
tongbinhphuong_tich_va_thuong x y = tongbinhphuong
 where 
  tongbinhphuong = let tong_tich = x * y
                       tong_thuong = x / y
                    in (tong_tich * tong_tich) + (tong_thuong * tong_thuong)

tongbinhphuong_tich_va_thuong' :: Float -> Float -> Float
tongbinhphuong_tich_va_thuong' x y =
  let 
    binhphuong_tich = tich * tich
      where tich = x * y
    binhphuong_thuong = thuong * thuong
      where thuong = x / y
  in binhphuong_tich + binhphuong_thuong