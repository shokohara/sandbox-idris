module Sandbox

export
f : Int -> List Int
f n = [x | x <- [1..n], (((x `mod` 3) == 0) || ((x `mod` 5) == 0))]

export
resolve : Int
resolve = sum $ f 999

