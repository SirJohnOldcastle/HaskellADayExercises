module HAD.Y2014.M02.D25.Exercise where

import Control.Monad
import Data.List (group)

compress :: Eq a => [a] -> [(a, Int)]
compress = fmap (liftM (,) head `ap` length) . group
