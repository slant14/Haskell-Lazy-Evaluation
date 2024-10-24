everyNth :: Int -> [a] -> [a]
everyNth n xs
    | n <= 0    = error "N must be greater than 0"
    | otherwise = everyNthHelper n xs
  where
    everyNthHelper _ [] = []
    everyNthHelper 1 (x:xs) = x : everyNthHelper n xs
    everyNthHelper k (_:xs) = everyNthHelper (k - 1) xs


main :: IO ()
main = do
    print (everyNth 2 [1..10])         
    print (everyNth 3 "Hello, world!") 
    print (everyNth 3 [undefined, undefined, 3, undefined, 5]) 
    print (take 4 (everyNth 5 [1..]))   
