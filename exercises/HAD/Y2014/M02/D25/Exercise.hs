module HAD.Y2014.M02.D25.Exercise where

import Control.Monad
import Data.List

compress :: Eq a => [a] -> [(a, Int)]
compress = fmap (liftM (,) head `ap` length) . group

(.:) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
(.:) = (.) . (.)

expand :: [(a, Int)] -> [a]
expand = concat .: fmap $ uncurry $ flip replicate
