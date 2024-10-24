divides :: Int -> Int -> Bool
divides d n = n `mod` d == 0

imply :: [Bool] -> Bool -> Bool
imply ps q = not (and ps) || q

main :: IO ()
main = do
    -- 
    let premises1 = map (`divides` 100) [20, 4]
    let conclusion1 = 3 `divides` 100
    print $ imply premises1 conclusion1  

    -- 
    let premises2 = map (`divides` 100) [3, undefined]
    let conclusion2 = 4 `divides` 100
    print $ imply premises2 conclusion2  

    -- 
    let a = True
    let b = False
    print $ imply [a] b  

    --
    let b' = True
    print $ imply [] b'  

    -- 
    let b'' = False
    print $ imply [] b'' 
