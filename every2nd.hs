every2nd :: [a] -> [a]
every2nd []         = []
every2nd (_:[])     = []
every2nd (_:x:xs)   = x : every2nd xs

main :: IO ()
main = do
    print (every2nd [1..10])          
    print (every2nd "Hello, world!")  
    print (every2nd [undefined, 2])   
    print (take 3 (every2nd [1..]))   
