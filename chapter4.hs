-- Chapter 4 Exercises

-- 1
halve xs | even (length xs) = [take n xs, drop n xs]
    where n = length xs `div` 2

-- 2
thirdA xs = head(tail(tail xs))
thirdB xs = xs !! 2
thirdC (_:_:x:_) = x

-- 3
safetailA xs = if null xs then xs else tail xs
safetailB xs | null xs   = xs
             | otherwise = tail xs

-- i had to cheat on this one
safetailC [] = []
safetailC (_: xs) = xs

-- 4
{-
False || False = False
True || False = True
False || True = True
True || True = True

False || False = True
_ || _ = True

False || b = True
True || _ = True
-}

-- 5
myAnd a b = if a == True
            then if b == True
                then True
                else False
            else
                False

-- 6
myAnd2 a b = if a == True
             then b
             else False

-- 7
mult = \x y z -> x * y * z

-- 8
luhnDouble n | x > 9     = x - 9
             | otherwise = x
    where x = n * 2

luhn a b c d | total `mod` 10 == 0 = True
             | otherwise       = False
    where
        a' = luhnDouble a
        c' = luhnDouble c
        total = a' + b + c' + d
