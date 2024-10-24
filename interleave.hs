interleave :: [a] -> [a] -> [a]
interleave [] ys         = ys
interleave xs []         = xs
interleave (x:xs) (y:ys) = x : y : interleave xs ys


main :: IO ()
main = do
    -- Test cases
    print (interleave [1,2,3] [9,8,7,6])          
    print (interleave "123" "abcde")              
    print (take 5 (interleave [1..] [9,8,7]))     
    print (interleave [] [1,2,3])                
    print (interleave [1,2,3] [])                 
    print (take 10 (interleave [1..] [10..]))     
