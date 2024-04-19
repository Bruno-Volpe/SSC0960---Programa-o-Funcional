module Main where

import Data.List (maximum)

-- Função para verificar se um número é primo
isPrime :: Int -> Bool
isPrime n
  | n <= 1 = False
  | otherwise = not (any dividesN [2 .. limit])
  where
    limit = floor (sqrt (fromIntegral n))
    dividesN x = n `mod` x == 0

-- Função para gerar a lista de todos os números primos em um intervalo
primesInRange :: Int -> Int -> [Int]
primesInRange x y = filter isPrime [x .. y]

-- Função para calcular o comprimento do maior intervalo entre primos consecutivos
maiorIntervaloPrimos :: Int -> Int -> Int
maiorIntervaloPrimos x y
  | length primesList < 2 = 0
  | otherwise = maximum $ zipWith (-) (tail primesList) primesList
  where
    primesList = primesInRange x y

main :: IO ()
main = do
  x <- readLn
  y <- readLn
  putStrLn (show (maiorIntervaloPrimos x y))
