bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs = case bubble xs of
    (ys, False) -> ys
    (ys, True)  -> bubbleSort ys
  where
    bubble [x] = ([x], False)
    bubble (x:y:xs)
      | x > y     = let (rest, swapped) = bubble (x:xs)
                    in (y:rest, True || swapped)
      | otherwise = let (rest, swapped) = bubble (y:xs)
                    in (x:rest, swapped)

main = print $ bubbleSort [5, 2, 9, 1, 5, 6]
