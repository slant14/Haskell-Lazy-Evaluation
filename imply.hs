implies :: Bool -> Bool -> Bool
implies False _ = True
implies True x  = x


main :: IO ()
main = do
    let result = implies (10 `mod` 6 == 0) (10 `mod` 0 == 0)
    print result
