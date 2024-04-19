main = do
  l <- getLine
  let x :: Integer
      x = read l

  let s = sinal x
  let str = show s
  let temp = tempo x
  putStrLn temp

-- Sao a mesma coisa porem escritas d eforma diferente
sinal :: Integer -> Integer
sinal x = if x > 0 then 1 else if x == 0 then 0 else -1

sinal2 :: Integer -> Integer
sinal2 x
  | x > 0 = 1
  | x == 0 = 0
  | otherwise = -1

tempo :: Integer -> String
tempo t
  | t < 0 = "Congelante"
  | t < 15 = "Frio"
  | t <= 25 = "Quente"
  | otherwise = "Muito Quente"