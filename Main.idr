module Main

import Data.Vect
import Sandbox
--import Data.SortedMap
import Data.Vect
--solutions : Map Integer Integer
--solutions = Map.fromList [
--                           (1, Problem01.resolve)
--                         , (2, Problem02.resolve)
--                         , (3, Problem03.resolve)
--                         , (4, Problem04.resolve)
--                         , (5, Problem05.resolve)
--                         , (6, Problem06.resolve)
--                         , (7, Problem07.resolve)
--                         , (8, Problem08.resolve)
--                         , (9, Problem09.resolve)
--                         ]

resolve : Int
resolve = sum $ f 999

--main : IO ()
--main = putStrLn . show $ Problem01.resolve
x : Vect 5 Nat
x = 0 :: 1 :: 2 :: 3 :: 4 :: Nil

main : IO ()
main = putStrLn . show $ x
--solution :: Integer -> Maybe Integer
--solution = flip Map.lookup solutions
--
--main :: IO ()
--main = do
--  args <- getArgs
--  case args of
--    [number] -> case solution (read number :: Integer) of
--      Just v -> print v
--      Nothing -> putStrLn "There is no solution yet for this problem"
--    _ -> usage >> exitFailure
--  where
--    usage = putStrLn "Usage: stack runghc app/Main.hs [number]"
--

isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []

sum : (single : Bool) -> isSingleton single -> Nat
sum True x = x
sum False [] = 0
sum False (x :: xs) = x + sum False xs

