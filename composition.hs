module Baz where
  -- Basics
  f1 :: (Num a) => [a] -> [a]
  f1 = map (\x -> negate $ abs x)

  -- Composition
  f2 :: (Num a) => [a] -> [a]
  f2 = map (negate . abs)
