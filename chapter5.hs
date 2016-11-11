-- 1
-- [x^2 | x <- [1..100]]

-- 2
grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

-- 3
square n = [(x,y) | (x,y) <- grid n n, x /= y]

-- 4
repl n v = [val | _ <- [1..n]]
    where
        val = v

-- 5
pyths n = [(a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], a^2 + b^2 == c^2]


-- 6
factors n = [x | x <- [1..n], n `mod` x == 0]
perfects n = [x | x <- [1..n], sum(tail(reverse(factors x))) == x]

-- 7 - this is wrong
concat [x | x <- [[(x,x+1)] | x <- [1..4]]]
