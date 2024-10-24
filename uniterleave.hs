uninterleave :: [a] -> ([a], [a])
uninterleave xs = (selectOdd xs, selectEven xs)
  where
   
    selectOdd :: [a] -> [a]
    selectOdd []     = []
    selectOdd (x:xs) = x : selectEven xs

   
    selectEven :: [a] -> [a]
    selectEven []     = []
    selectEven (_:xs) = selectOdd xs

main :: IO ()
main = do
    -- Test cases
    print (uninterleave [1..6])                       
    print (uninterleave "hello")                       
    print (take 5 (fst (uninterleave [1..])))          
    print (take 5 (snd (uninterleave [1..])))          
    print (uninterleave [] :: ([Int], [Int]))         
