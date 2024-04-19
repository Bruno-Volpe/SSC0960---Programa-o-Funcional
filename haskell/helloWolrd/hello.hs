-- https://haskell.pesquisa.ufabc.edu.br/haskell/03.haskell.basico.1/

module Main where   -- indica que é o módulo principal

main :: IO ()
main = do                  -- início da função principal
  putStrLn "hello world"   -- imprime hello world

  f a b       -- f(a,b)
  f a b + c*d -- f(a,b) + c*d

  
  -- f2 :: (Eq a, a) => a -> a -> bool
  -- f2 a b = a == b
  -- putStrLn (show (f2 1 2)) -- False


  f3 :: (Eq a, Num a) => a -> a -> String
  f3 x y = if x == y
            then "igual"
            else "diferente"
