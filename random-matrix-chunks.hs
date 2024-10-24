import System.Random (StdGen, newStdGen, randomRs)


chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)


randomMatrix :: Int -> StdGen -> [[Int]]
randomMatrix n g = chunksOf n (take (n * n) (randomRs (0, 9) g))

main :: IO ()
main = do

  putStrLn "\nGenerating a random 3x3 matrix:"
  g <- newStdGen
  let matrix = randomMatrix 3 g
  mapM_ print matrix
