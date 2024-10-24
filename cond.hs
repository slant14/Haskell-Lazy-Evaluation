cond :: [(Bool, a)] -> a -> a
cond [] def = def
cond ((b, x) : xs) def = if b then x else cond xs def

main :: IO ()
main = do
    let n = 12
    let result = cond 
          [ (n == 0, "no apples")
          , (n == 1, "one apple")
          , (n < 0, "invalid input")
          ] "many apples"
    putStrLn result  

   
    let greeting = cond [] "hello"
    putStrLn greeting  

    let n2 = -5
    let result2 = cond 
          [ (n2 == 0, "no apples")
          , (n2 == 1, "one apple")
          , (n2 < 0, "invalid input")
          ] "many apples"
    putStrLn result2  

    let n3 = 0
    let result3 = cond 
          [ (n3 == 0, "no apples")
          , (n3 == 1, "one apple")
          , (n3 < 0, "invalid input")
          ] "many apples"
    putStrLn result3  
